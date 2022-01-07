
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct adpt_device {struct adpt_device* next_lun; TYPE_5__* pScsi_dev; int scsi_lun; scalar_t__ scsi_id; scalar_t__ scsi_channel; TYPE_3__* pI2o_dev; } ;
struct Scsi_Host {int sg_tablesize; int can_queue; int irq; int host_no; } ;
struct TYPE_10__ {TYPE_1__* channel; scalar_t__ reply_fifo_size; int name; struct Scsi_Host* host; int detail; struct TYPE_10__* next; } ;
typedef TYPE_4__ adpt_hba ;
struct TYPE_11__ {int rev; int vendor; } ;
struct TYPE_8__ {int tid; } ;
struct TYPE_9__ {TYPE_2__ lct_data; } ;
struct TYPE_7__ {struct adpt_device** device; } ;


 int DPT_I2O_VERSION ;
 int MAX_CHANNEL ;
 int MAX_ID ;
 int adpt_configuration_lock ;
 TYPE_4__* hba_chain ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_device_online (TYPE_5__*) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int adpt_show_info(struct seq_file *m, struct Scsi_Host *host)
{
 struct adpt_device* d;
 int id;
 int chan;
 adpt_hba* pHba;
 int unit;


 mutex_lock(&adpt_configuration_lock);
 for (pHba = hba_chain; pHba; pHba = pHba->next) {
  if (pHba->host == host) {
   break;
  }
 }
 mutex_unlock(&adpt_configuration_lock);
 if (pHba == ((void*)0)) {
  return 0;
 }
 host = pHba->host;

 seq_printf(m, "Adaptec I2O RAID Driver Version: %s\n\n", DPT_I2O_VERSION);
 seq_printf(m, "%s\n", pHba->detail);
 seq_printf(m, "SCSI Host=scsi%d  Control Node=/dev/%s  irq=%d\n",
   pHba->host->host_no, pHba->name, host->irq);
 seq_printf(m, "\tpost fifo size  = %d\n\treply fifo size = %d\n\tsg table size   = %d\n\n",
   host->can_queue, (int) pHba->reply_fifo_size , host->sg_tablesize);

 seq_puts(m, "Devices:\n");
 for(chan = 0; chan < MAX_CHANNEL; chan++) {
  for(id = 0; id < MAX_ID; id++) {
   d = pHba->channel[chan].device[id];
   while(d) {
    seq_printf(m,"\t%-24.24s", d->pScsi_dev->vendor);
    seq_printf(m," Rev: %-8.8s\n", d->pScsi_dev->rev);

    unit = d->pI2o_dev->lct_data.tid;
    seq_printf(m, "\tTID=%d, (Channel=%d, Target=%d, Lun=%llu)  (%s)\n\n",
            unit, (int)d->scsi_channel, (int)d->scsi_id, d->scsi_lun,
            scsi_device_online(d->pScsi_dev)? "online":"offline");
    d = d->next_lun;
   }
  }
 }
 return 0;
}
