
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufshcd_lrb {int task_tag; int ucd_rsp_ptr; } ;
struct TYPE_2__ {int last_hibern8_exit_tstamp; } ;
struct ufs_hba {int dev; int eeh_work; int pm_op_in_progress; TYPE_1__ ufs_stats; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 scalar_t__ DID_OK ;
 int DID_REQUEUE ;
 int MASK_SCSI_STATUS ;
 int dev_err (int ,char*,...) ;
 scalar_t__ host_byte (int) ;
 int ktime_set (int ,int ) ;
 int schedule_work (int *) ;
 int ufshcd_get_req_rsp (int ) ;
 int ufshcd_get_rsp_upiu_result (int ) ;
 int ufshcd_get_tr_ocs (struct ufshcd_lrb*) ;
 int ufshcd_is_exception_event (int ) ;
 int ufshcd_print_host_regs (struct ufs_hba*) ;
 int ufshcd_print_host_state (struct ufs_hba*) ;
 int ufshcd_print_trs (struct ufs_hba*,int,int) ;
 int ufshcd_scsi_cmd_status (struct ufshcd_lrb*,int) ;

__attribute__((used)) static inline int
ufshcd_transfer_rsp_status(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
{
 int result = 0;
 int scsi_status;
 int ocs;


 ocs = ufshcd_get_tr_ocs(lrbp);

 switch (ocs) {
 case 130:
  result = ufshcd_get_req_rsp(lrbp->ucd_rsp_ptr);
  hba->ufs_stats.last_hibern8_exit_tstamp = ktime_set(0, 0);
  switch (result) {
  case 128:




   result = ufshcd_get_rsp_upiu_result(lrbp->ucd_rsp_ptr);





   scsi_status = result & MASK_SCSI_STATUS;
   result = ufshcd_scsi_cmd_status(lrbp, scsi_status);
   if (!hba->pm_op_in_progress &&
       ufshcd_is_exception_event(lrbp->ucd_rsp_ptr))
    schedule_work(&hba->eeh_work);
   break;
  case 129:

   result = DID_ERROR << 16;
   dev_err(hba->dev,
    "Reject UPIU not fully implemented\n");
   break;
  default:
   dev_err(hba->dev,
    "Unexpected request response code = %x\n",
    result);
   result = DID_ERROR << 16;
   break;
  }
  break;
 case 138:
  result |= DID_ABORT << 16;
  break;
 case 135:
  result |= DID_REQUEUE << 16;
  break;
 case 136:
 case 134:
 case 133:
 case 132:
 case 131:
 case 137:
 default:
  result |= DID_ERROR << 16;
  dev_err(hba->dev,
    "OCS error from controller = %x for tag %d\n",
    ocs, lrbp->task_tag);
  ufshcd_print_host_regs(hba);
  ufshcd_print_host_state(hba);
  break;
 }

 if (host_byte(result) != DID_OK)
  ufshcd_print_trs(hba, 1 << lrbp->task_tag, 1);
 return result;
}
