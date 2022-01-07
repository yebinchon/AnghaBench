
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_sysmon {int qmi; int subdev; int rproc; int nb; int node; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 int kfree (struct qcom_sysmon*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qmi_handle_release (int *) ;
 int rproc_remove_subdev (int ,int *) ;
 int sysmon_lock ;
 int sysmon_notifiers ;

void qcom_remove_sysmon_subdev(struct qcom_sysmon *sysmon)
{
 if (!sysmon)
  return;

 mutex_lock(&sysmon_lock);
 list_del(&sysmon->node);
 mutex_unlock(&sysmon_lock);

 blocking_notifier_chain_unregister(&sysmon_notifiers, &sysmon->nb);

 rproc_remove_subdev(sysmon->rproc, &sysmon->subdev);

 qmi_handle_release(&sysmon->qmi);

 kfree(sysmon);
}
