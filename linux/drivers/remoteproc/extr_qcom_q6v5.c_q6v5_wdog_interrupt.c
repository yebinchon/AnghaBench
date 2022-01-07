
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int rproc; int dev; int crash_reason; int stop_done; int running; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IS_ERR (char*) ;
 int QCOM_SMEM_HOST_ANY ;
 int RPROC_WATCHDOG ;
 int complete (int *) ;
 int dev_err (int ,char*,...) ;
 char* qcom_smem_get (int ,int ,size_t*) ;
 int rproc_report_crash (int ,int ) ;

__attribute__((used)) static irqreturn_t q6v5_wdog_interrupt(int irq, void *data)
{
 struct qcom_q6v5 *q6v5 = data;
 size_t len;
 char *msg;


 if (!q6v5->running) {
  complete(&q6v5->stop_done);
  return IRQ_HANDLED;
 }

 msg = qcom_smem_get(QCOM_SMEM_HOST_ANY, q6v5->crash_reason, &len);
 if (!IS_ERR(msg) && len > 0 && msg[0])
  dev_err(q6v5->dev, "watchdog received: %s\n", msg);
 else
  dev_err(q6v5->dev, "watchdog without message\n");

 rproc_report_crash(q6v5->rproc, RPROC_WATCHDOG);

 return IRQ_HANDLED;
}
