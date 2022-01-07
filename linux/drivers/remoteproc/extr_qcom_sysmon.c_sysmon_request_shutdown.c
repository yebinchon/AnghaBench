
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_sysmon {int ssr_ack; int lock; int dev; int comp; int ept; } ;


 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int rpmsg_send (int ,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void sysmon_request_shutdown(struct qcom_sysmon *sysmon)
{
 char *req = "ssr:shutdown";
 int ret;

 mutex_lock(&sysmon->lock);
 reinit_completion(&sysmon->comp);
 sysmon->ssr_ack = 0;

 ret = rpmsg_send(sysmon->ept, req, strlen(req) + 1);
 if (ret < 0) {
  dev_err(sysmon->dev, "send sysmon shutdown request failed\n");
  goto out_unlock;
 }

 ret = wait_for_completion_timeout(&sysmon->comp,
       msecs_to_jiffies(5000));
 if (!ret) {
  dev_err(sysmon->dev, "timeout waiting for sysmon ack\n");
  goto out_unlock;
 }

 if (!sysmon->ssr_ack)
  dev_err(sysmon->dev,
   "unexpected response to sysmon shutdown request\n");

out_unlock:
 mutex_unlock(&sysmon->lock);
}
