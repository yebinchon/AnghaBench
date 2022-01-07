
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_host_template {int name; int this_id; } ;
struct Scsi_Host {int irq; int base; scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ unique_id; scalar_t__ hostdata; } ;
struct TYPE_6__ {int nspinfo; int Lock; int MmioAddress; int IrqNumber; scalar_t__ NumAddress; scalar_t__ BaseAddress; scalar_t__ CmdId; TYPE_1__* ScsiInfo; } ;
typedef TYPE_2__ nsp_hw_data ;
struct TYPE_5__ {struct Scsi_Host* host; } ;


 int NSP_DEBUG_INIT ;
 int memcpy (scalar_t__,TYPE_2__*,int) ;
 TYPE_2__ nsp_data_base ;
 int nsp_dbg (int ,char*,...) ;
 int nsp_driver_template ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int snprintf (int ,int,char*,scalar_t__,scalar_t__,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct Scsi_Host *nsp_detect(struct scsi_host_template *sht)
{
 struct Scsi_Host *host;
 nsp_hw_data *data_b = &nsp_data_base, *data;

 nsp_dbg(NSP_DEBUG_INIT, "this_id=%d", sht->this_id);
 host = scsi_host_alloc(&nsp_driver_template, sizeof(nsp_hw_data));
 if (host == ((void*)0)) {
  nsp_dbg(NSP_DEBUG_INIT, "host failed");
  return ((void*)0);
 }

 memcpy(host->hostdata, data_b, sizeof(nsp_hw_data));
 data = (nsp_hw_data *)host->hostdata;
 data->ScsiInfo->host = host;




 nsp_dbg(NSP_DEBUG_INIT, "irq=%d,%d", data_b->IrqNumber, ((nsp_hw_data *)host->hostdata)->IrqNumber);

 host->unique_id = data->BaseAddress;
 host->io_port = data->BaseAddress;
 host->n_io_port = data->NumAddress;
 host->irq = data->IrqNumber;
 host->base = data->MmioAddress;

 spin_lock_init(&(data->Lock));

 snprintf(data->nspinfo,
   sizeof(data->nspinfo),
   "NinjaSCSI-3/32Bi Driver $Revision: 1.23 $ IO:0x%04lx-0x%04lx MMIO(virt addr):0x%04lx IRQ:%02d",
   host->io_port, host->io_port + host->n_io_port - 1,
   host->base,
   host->irq);
 sht->name = data->nspinfo;

 nsp_dbg(NSP_DEBUG_INIT, "end");


 return host;
}
