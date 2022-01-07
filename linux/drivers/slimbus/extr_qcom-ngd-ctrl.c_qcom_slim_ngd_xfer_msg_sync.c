
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_msg_txn {int mt; int mc; int * comp; } ;
struct slim_controller {int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int dev_err (int ,char*,int ,int ) ;
 int done ;
 int pm_runtime_get_sync (int ) ;
 int qcom_slim_ngd_xfer_msg (struct slim_controller*,struct slim_msg_txn*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int qcom_slim_ngd_xfer_msg_sync(struct slim_controller *ctrl,
           struct slim_msg_txn *txn)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int ret, timeout;

 pm_runtime_get_sync(ctrl->dev);

 txn->comp = &done;

 ret = qcom_slim_ngd_xfer_msg(ctrl, txn);
 if (ret)
  return ret;

 timeout = wait_for_completion_timeout(&done, HZ);
 if (!timeout) {
  dev_err(ctrl->dev, "TX timed out:MC:0x%x,mt:0x%x", txn->mc,
    txn->mt);
  return -ETIMEDOUT;
 }
 return 0;
}
