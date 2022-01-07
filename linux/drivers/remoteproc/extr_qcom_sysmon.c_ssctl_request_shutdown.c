
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ result; } ;
struct ssctl_shutdown_resp {TYPE_1__ resp; } ;
struct qmi_txn {int dummy; } ;
struct qcom_sysmon {scalar_t__ shutdown_irq; int dev; int ind_comp; int shutdown_comp; int ssctl; int qmi; } ;


 int HZ ;
 int SSCTL_SHUTDOWN_REQ ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int qmi_send_request (int *,int *,struct qmi_txn*,int ,int ,int *,int *) ;
 int qmi_txn_cancel (struct qmi_txn*) ;
 int qmi_txn_init (int *,struct qmi_txn*,int ,struct ssctl_shutdown_resp*) ;
 int qmi_txn_wait (struct qmi_txn*,int) ;
 int reinit_completion (int *) ;
 int ssctl_shutdown_resp_ei ;
 int try_wait_for_completion (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static void ssctl_request_shutdown(struct qcom_sysmon *sysmon)
{
 struct ssctl_shutdown_resp resp;
 struct qmi_txn txn;
 int ret;

 reinit_completion(&sysmon->ind_comp);
 reinit_completion(&sysmon->shutdown_comp);
 ret = qmi_txn_init(&sysmon->qmi, &txn, ssctl_shutdown_resp_ei, &resp);
 if (ret < 0) {
  dev_err(sysmon->dev, "failed to allocate QMI txn\n");
  return;
 }

 ret = qmi_send_request(&sysmon->qmi, &sysmon->ssctl, &txn,
          SSCTL_SHUTDOWN_REQ, 0, ((void*)0), ((void*)0));
 if (ret < 0) {
  dev_err(sysmon->dev, "failed to send shutdown request\n");
  qmi_txn_cancel(&txn);
  return;
 }

 ret = qmi_txn_wait(&txn, 5 * HZ);
 if (ret < 0)
  dev_err(sysmon->dev, "failed receiving QMI response\n");
 else if (resp.resp.result)
  dev_err(sysmon->dev, "shutdown request failed\n");
 else
  dev_dbg(sysmon->dev, "shutdown request completed\n");

 if (sysmon->shutdown_irq > 0) {
  ret = wait_for_completion_timeout(&sysmon->shutdown_comp,
        10 * HZ);
  if (!ret) {
   ret = try_wait_for_completion(&sysmon->ind_comp);
   if (!ret)
    dev_err(sysmon->dev,
     "timeout waiting for shutdown ack\n");
  }
 }
}
