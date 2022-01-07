
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct Scsi_Host {int host_no; int this_id; int sg_tablesize; int base; scalar_t__ n_io_port; int io_port; int irq; scalar_t__ hostdata; } ;
struct TYPE_3__ {TYPE_2__* Sync; int Lock; int CurrentSC; scalar_t__ MmioLength; } ;
typedef TYPE_1__ nsp_hw_data ;
struct TYPE_4__ {int SyncNegotiation; int SyncPeriod; int SyncOffset; } ;


 int ARRAY_SIZE (TYPE_2__*) ;






 int nsp_burst_mode ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nsp_show_info(struct seq_file *m, struct Scsi_Host *host)
{
 int id;
 int speed;
 unsigned long flags;
 nsp_hw_data *data;
 int hostno;

 hostno = host->host_no;
 data = (nsp_hw_data *)host->hostdata;

 seq_puts(m, "NinjaSCSI status\n\n"
  "Driver version:        $Revision: 1.23 $\n");
 seq_printf(m, "SCSI host No.:         %d\n", hostno);
 seq_printf(m, "IRQ:                   %d\n", host->irq);
 seq_printf(m, "IO:                    0x%lx-0x%lx\n", host->io_port, host->io_port + host->n_io_port - 1);
 seq_printf(m, "MMIO(virtual address): 0x%lx-0x%lx\n", host->base, host->base + data->MmioLength - 1);
 seq_printf(m, "sg_tablesize:          %d\n", host->sg_tablesize);

 seq_puts(m, "burst transfer mode:   ");
 switch (nsp_burst_mode) {
 case 132:
  seq_puts(m, "io8");
  break;
 case 133:
  seq_puts(m, "io32");
  break;
 case 131:
  seq_puts(m, "mem32");
  break;
 default:
  seq_puts(m, "???");
  break;
 }
 seq_putc(m, '\n');


 spin_lock_irqsave(&(data->Lock), flags);
 seq_printf(m, "CurrentSC:             0x%p\n\n", data->CurrentSC);
 spin_unlock_irqrestore(&(data->Lock), flags);

 seq_puts(m, "SDTR status\n");
 for(id = 0; id < ARRAY_SIZE(data->Sync); id++) {

  seq_printf(m, "id %d: ", id);

  if (id == host->this_id) {
   seq_puts(m, "----- NinjaSCSI-3 host adapter\n");
   continue;
  }

  switch(data->Sync[id].SyncNegotiation) {
  case 128:
   seq_puts(m, " sync");
   break;
  case 130:
   seq_puts(m, "async");
   break;
  case 129:
   seq_puts(m, " none");
   break;
  default:
   seq_puts(m, "?????");
   break;
  }

  if (data->Sync[id].SyncPeriod != 0) {
   speed = 1000000 / (data->Sync[id].SyncPeriod * 4);

   seq_printf(m, " transfer %d.%dMB/s, offset %d",
    speed / 1000,
    speed % 1000,
    data->Sync[id].SyncOffset
    );
  }
  seq_putc(m, '\n');
 }
 return 0;
}
