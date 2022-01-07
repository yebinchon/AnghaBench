
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct qcom_q6v5 {int crash_reason; void (* handover ) (struct qcom_q6v5*) ;scalar_t__ wdog_irq; scalar_t__ fatal_irq; scalar_t__ ready_irq; scalar_t__ handover_irq; scalar_t__ stop_irq; int state; int stop_bit; int stop_done; int start_done; int * dev; struct rproc* rproc; } ;
struct platform_device {int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,char*,struct qcom_q6v5*) ;
 int disable_irq (int) ;
 int init_completion (int *) ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 int q6v5_fatal_interrupt ;
 int q6v5_handover_interrupt ;
 int q6v5_ready_interrupt ;
 int q6v5_stop_interrupt ;
 int q6v5_wdog_interrupt ;
 int qcom_smem_state_get (int *,char*,int *) ;

int qcom_q6v5_init(struct qcom_q6v5 *q6v5, struct platform_device *pdev,
     struct rproc *rproc, int crash_reason,
     void (*handover)(struct qcom_q6v5 *q6v5))
{
 int ret;

 q6v5->rproc = rproc;
 q6v5->dev = &pdev->dev;
 q6v5->crash_reason = crash_reason;
 q6v5->handover = handover;

 init_completion(&q6v5->start_done);
 init_completion(&q6v5->stop_done);

 q6v5->wdog_irq = platform_get_irq_byname(pdev, "wdog");
 if (q6v5->wdog_irq < 0)
  return q6v5->wdog_irq;

 ret = devm_request_threaded_irq(&pdev->dev, q6v5->wdog_irq,
     ((void*)0), q6v5_wdog_interrupt,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     "q6v5 wdog", q6v5);
 if (ret) {
  dev_err(&pdev->dev, "failed to acquire wdog IRQ\n");
  return ret;
 }

 q6v5->fatal_irq = platform_get_irq_byname(pdev, "fatal");
 if (q6v5->fatal_irq < 0)
  return q6v5->fatal_irq;

 ret = devm_request_threaded_irq(&pdev->dev, q6v5->fatal_irq,
     ((void*)0), q6v5_fatal_interrupt,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     "q6v5 fatal", q6v5);
 if (ret) {
  dev_err(&pdev->dev, "failed to acquire fatal IRQ\n");
  return ret;
 }

 q6v5->ready_irq = platform_get_irq_byname(pdev, "ready");
 if (q6v5->ready_irq < 0)
  return q6v5->ready_irq;

 ret = devm_request_threaded_irq(&pdev->dev, q6v5->ready_irq,
     ((void*)0), q6v5_ready_interrupt,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     "q6v5 ready", q6v5);
 if (ret) {
  dev_err(&pdev->dev, "failed to acquire ready IRQ\n");
  return ret;
 }

 q6v5->handover_irq = platform_get_irq_byname(pdev, "handover");
 if (q6v5->handover_irq < 0)
  return q6v5->handover_irq;

 ret = devm_request_threaded_irq(&pdev->dev, q6v5->handover_irq,
     ((void*)0), q6v5_handover_interrupt,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     "q6v5 handover", q6v5);
 if (ret) {
  dev_err(&pdev->dev, "failed to acquire handover IRQ\n");
  return ret;
 }
 disable_irq(q6v5->handover_irq);

 q6v5->stop_irq = platform_get_irq_byname(pdev, "stop-ack");
 if (q6v5->stop_irq < 0)
  return q6v5->stop_irq;

 ret = devm_request_threaded_irq(&pdev->dev, q6v5->stop_irq,
     ((void*)0), q6v5_stop_interrupt,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     "q6v5 stop", q6v5);
 if (ret) {
  dev_err(&pdev->dev, "failed to acquire stop-ack IRQ\n");
  return ret;
 }

 q6v5->state = qcom_smem_state_get(&pdev->dev, "stop", &q6v5->stop_bit);
 if (IS_ERR(q6v5->state)) {
  dev_err(&pdev->dev, "failed to acquire stop state\n");
  return PTR_ERR(q6v5->state);
 }

 return 0;
}
