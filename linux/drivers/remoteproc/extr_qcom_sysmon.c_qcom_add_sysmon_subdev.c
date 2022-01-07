
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* parent; } ;
struct rproc {TYPE_1__ dev; } ;
struct TYPE_9__ {int notifier_call; } ;
struct TYPE_7__ {int stop; int start; } ;
struct qcom_sysmon {char const* name; int ssctl_instance; int shutdown_irq; int node; TYPE_5__ nb; TYPE_2__ subdev; int qmi; TYPE_3__* dev; int lock; int shutdown_comp; int ind_comp; int comp; struct rproc* rproc; } ;
struct TYPE_8__ {int of_node; } ;


 int ENODATA ;
 int ENOMEM ;
 struct qcom_sysmon* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int SSCTL_MAX_MSG_LEN ;
 int blocking_notifier_chain_register (int *,TYPE_5__*) ;
 int dev_err (TYPE_3__*,char*) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int *,int ,int,char*,struct qcom_sysmon*) ;
 int init_completion (int *) ;
 int kfree (struct qcom_sysmon*) ;
 struct qcom_sysmon* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_irq_get_byname (int ,char*) ;
 int qmi_add_lookup (int *,int,int ,int ) ;
 int qmi_handle_init (int *,int ,int *,int ) ;
 int qmi_indication_handler ;
 int rproc_add_subdev (struct rproc*,TYPE_2__*) ;
 int ssctl_ops ;
 int sysmon_list ;
 int sysmon_lock ;
 int sysmon_notifiers ;
 int sysmon_notify ;
 int sysmon_shutdown_interrupt ;
 int sysmon_start ;
 int sysmon_stop ;

struct qcom_sysmon *qcom_add_sysmon_subdev(struct rproc *rproc,
        const char *name,
        int ssctl_instance)
{
 struct qcom_sysmon *sysmon;
 int ret;

 sysmon = kzalloc(sizeof(*sysmon), GFP_KERNEL);
 if (!sysmon)
  return ERR_PTR(-ENOMEM);

 sysmon->dev = rproc->dev.parent;
 sysmon->rproc = rproc;

 sysmon->name = name;
 sysmon->ssctl_instance = ssctl_instance;

 init_completion(&sysmon->comp);
 init_completion(&sysmon->ind_comp);
 init_completion(&sysmon->shutdown_comp);
 mutex_init(&sysmon->lock);

 sysmon->shutdown_irq = of_irq_get_byname(sysmon->dev->of_node,
       "shutdown-ack");
 if (sysmon->shutdown_irq < 0) {
  if (sysmon->shutdown_irq != -ENODATA) {
   dev_err(sysmon->dev,
    "failed to retrieve shutdown-ack IRQ\n");
   return ERR_PTR(sysmon->shutdown_irq);
  }
 } else {
  ret = devm_request_threaded_irq(sysmon->dev,
      sysmon->shutdown_irq,
      ((void*)0), sysmon_shutdown_interrupt,
      IRQF_TRIGGER_RISING | IRQF_ONESHOT,
      "q6v5 shutdown-ack", sysmon);
  if (ret) {
   dev_err(sysmon->dev,
    "failed to acquire shutdown-ack IRQ\n");
   return ERR_PTR(ret);
  }
 }

 ret = qmi_handle_init(&sysmon->qmi, SSCTL_MAX_MSG_LEN, &ssctl_ops,
         qmi_indication_handler);
 if (ret < 0) {
  dev_err(sysmon->dev, "failed to initialize qmi handle\n");
  kfree(sysmon);
  return ERR_PTR(ret);
 }

 qmi_add_lookup(&sysmon->qmi, 43, 0, 0);

 sysmon->subdev.start = sysmon_start;
 sysmon->subdev.stop = sysmon_stop;

 rproc_add_subdev(rproc, &sysmon->subdev);

 sysmon->nb.notifier_call = sysmon_notify;
 blocking_notifier_chain_register(&sysmon_notifiers, &sysmon->nb);

 mutex_lock(&sysmon_lock);
 list_add(&sysmon->node, &sysmon_list);
 mutex_unlock(&sysmon_lock);

 return sysmon;
}
