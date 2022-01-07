
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_4__ {scalar_t__ timer_pops; } ;
struct TYPE_3__ {int unit_id; } ;
struct scsi_info {int state; int dev; int dma_dev; scalar_t__ credit; scalar_t__ debit; TYPE_2__ rsp_q_timer; int flags; TYPE_1__ dds; } ;


 long ADAPT_SUCCESS ;


 int H_ENABLE_PREPARE_FOR_SUSPEND ;

 long H_NOT_FOUND ;


 scalar_t__ INIT_MSG ;
 int PREP_FOR_SUSPEND_ENABLED ;
 int PRESERVE_FLAG_FIELDS ;
 int UNDEFINED ;
 scalar_t__ UNUSED_FORMAT ;
 int dev_err (int *,char*,long) ;
 int dev_warn (int *,char*,long) ;
 long h_vioctl (int ,int ,int,int ,int ,int ,int ) ;
 long ibmvscsis_check_init_msg (struct scsi_info*,scalar_t__*) ;
 long ibmvscsis_handle_init_msg (struct scsi_info*) ;
 long ibmvscsis_send_init_message (struct scsi_info*,scalar_t__) ;
 long vio_enable_interrupts (int ) ;

__attribute__((used)) static long ibmvscsis_establish_new_q(struct scsi_info *vscsi)
{
 long rc = ADAPT_SUCCESS;
 uint format;

 rc = h_vioctl(vscsi->dds.unit_id, H_ENABLE_PREPARE_FOR_SUSPEND, 30000,
        0, 0, 0, 0);
 if (rc == 128)
  vscsi->flags |= PREP_FOR_SUSPEND_ENABLED;
 else if (rc != H_NOT_FOUND)
  dev_err(&vscsi->dev, "Error from Enable Prepare for Suspend: %ld\n",
   rc);

 vscsi->flags &= PRESERVE_FLAG_FIELDS;
 vscsi->rsp_q_timer.timer_pops = 0;
 vscsi->debit = 0;
 vscsi->credit = 0;

 rc = vio_enable_interrupts(vscsi->dma_dev);
 if (rc) {
  dev_warn(&vscsi->dev, "establish_new_q: failed to enable interrupts, rc %ld\n",
    rc);
  return rc;
 }

 rc = ibmvscsis_check_init_msg(vscsi, &format);
 if (rc) {
  dev_err(&vscsi->dev, "establish_new_q: check_init_msg failed, rc %ld\n",
   rc);
  return rc;
 }

 if (format == UNUSED_FORMAT) {
  rc = ibmvscsis_send_init_message(vscsi, INIT_MSG);
  switch (rc) {
  case 128:
  case 131:
  case 132:
   rc = ADAPT_SUCCESS;
   break;

  case 129:
  case 130:
   break;

  default:
   vscsi->state = UNDEFINED;
   rc = 130;
   break;
  }
 } else if (format == INIT_MSG) {
  rc = ibmvscsis_handle_init_msg(vscsi);
 }

 return rc;
}
