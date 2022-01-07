
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_device {struct lpfc_device_data* hostdata; int lun; TYPE_1__* host; } ;
struct lpfc_vport {int cfg_lun_queue_depth; int fc_portname; struct lpfc_hba* phba; } ;
struct TYPE_4__ {int wwn; } ;
struct lpfc_name {TYPE_2__ u; } ;
struct lpfc_hba {scalar_t__ sli_rev; int total_scsi_bufs; int cfg_hba_queue_depth; int sdev_cnt; int devicelock; int luns; int cfg_XLanePriority; scalar_t__ cfg_fof; } ;
struct lpfc_device_data {int available; struct lpfc_device_data* rport_data; int listentry; } ;
struct fc_rport {struct lpfc_device_data* dd_data; int port_name; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int ENOMEM ;
 int ENXIO ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_FCP ;
 int LPFC_DISC_IOCB_BUFF_COUNT ;
 scalar_t__ LPFC_SLI_REV4 ;
 struct lpfc_device_data* __lpfc_get_device_data (struct lpfc_hba*,int *,int *,struct lpfc_name*,int ) ;
 int atomic_inc_return (int *) ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int list_add_tail (int *,int *) ;
 struct lpfc_device_data* lpfc_create_device_data (struct lpfc_hba*,int *,struct lpfc_name*,int ,int ,int) ;
 int lpfc_new_scsi_buf_s3 (struct lpfc_vport*,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;
 int scsi_target (struct scsi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fc_rport* starget_to_rport (int ) ;
 int u64_to_wwn (int ,int ) ;

__attribute__((used)) static int
lpfc_slave_alloc(struct scsi_device *sdev)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));
 uint32_t total = 0;
 uint32_t num_to_alloc = 0;
 int num_allocated = 0;
 uint32_t sdev_cnt;
 struct lpfc_device_data *device_data;
 unsigned long flags;
 struct lpfc_name target_wwpn;

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 if (phba->cfg_fof) {






  u64_to_wwn(rport->port_name, target_wwpn.u.wwn);
  spin_lock_irqsave(&phba->devicelock, flags);
  device_data = __lpfc_get_device_data(phba,
           &phba->luns,
           &vport->fc_portname,
           &target_wwpn,
           sdev->lun);
  if (!device_data) {
   spin_unlock_irqrestore(&phba->devicelock, flags);
   device_data = lpfc_create_device_data(phba,
       &vport->fc_portname,
       &target_wwpn,
       sdev->lun,
       phba->cfg_XLanePriority,
       1);
   if (!device_data)
    return -ENOMEM;
   spin_lock_irqsave(&phba->devicelock, flags);
   list_add_tail(&device_data->listentry, &phba->luns);
  }
  device_data->rport_data = rport->dd_data;
  device_data->available = 1;
  spin_unlock_irqrestore(&phba->devicelock, flags);
  sdev->hostdata = device_data;
 } else {
  sdev->hostdata = rport->dd_data;
 }
 sdev_cnt = atomic_inc_return(&phba->sdev_cnt);


 if (phba->sli_rev == LPFC_SLI_REV4)
  return 0;
 total = phba->total_scsi_bufs;
 num_to_alloc = vport->cfg_lun_queue_depth + 2;


 if ((sdev_cnt * (vport->cfg_lun_queue_depth + 2)) < total)
  return 0;


 if (total >= phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
     "0704 At limitation of %d preallocated "
     "command buffers\n", total);
  return 0;

 } else if (total + num_to_alloc >
  phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
     "0705 Allocation request of %d "
     "command buffers will exceed max of %d.  "
     "Reducing allocation request to %d.\n",
     num_to_alloc, phba->cfg_hba_queue_depth,
     (phba->cfg_hba_queue_depth - total));
  num_to_alloc = phba->cfg_hba_queue_depth - total;
 }
 num_allocated = lpfc_new_scsi_buf_s3(vport, num_to_alloc);
 if (num_to_alloc != num_allocated) {
   lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
      "0708 Allocation request of %d "
      "command buffers did not succeed.  "
      "Allocated %d buffers.\n",
      num_to_alloc, num_allocated);
 }
 if (num_allocated > 0)
  phba->total_scsi_bufs += num_allocated;
 return 0;
}
