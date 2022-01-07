
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_sysmon {int ssr_ack; int lock; int dev; int comp; int ept; } ;
typedef int req ;


 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int rpmsg_send (int ,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void sysmon_send_event(struct qcom_sysmon *sysmon, const char *name)
{
 char req[50];
 int len;
 int ret;

 len = snprintf(req, sizeof(req), "ssr:%s:before_shutdown", name);
 if (len >= sizeof(req))
  return;

 mutex_lock(&sysmon->lock);
 reinit_completion(&sysmon->comp);
 sysmon->ssr_ack = 0;

 ret = rpmsg_send(sysmon->ept, req, len);
 if (ret < 0) {
  dev_err(sysmon->dev, "failed to send sysmon event\n");
  goto out_unlock;
 }

 ret = wait_for_completion_timeout(&sysmon->comp,
       msecs_to_jiffies(5000));
 if (!ret) {
  dev_err(sysmon->dev, "timeout waiting for sysmon ack\n");
  goto out_unlock;
 }

 if (!sysmon->ssr_ack)
  dev_err(sysmon->dev, "unexpected response to sysmon event\n");

out_unlock:
 mutex_unlock(&sysmon->lock);
}
