
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_wcnss {int rproc; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IS_ERR (char*) ;
 int QCOM_SMEM_HOST_ANY ;
 int RPROC_FATAL_ERROR ;
 int WCNSS_CRASH_REASON_SMEM ;
 int dev_err (int ,char*,char*) ;
 char* qcom_smem_get (int ,int ,size_t*) ;
 int rproc_report_crash (int ,int ) ;

__attribute__((used)) static irqreturn_t wcnss_fatal_interrupt(int irq, void *dev)
{
 struct qcom_wcnss *wcnss = dev;
 size_t len;
 char *msg;

 msg = qcom_smem_get(QCOM_SMEM_HOST_ANY, WCNSS_CRASH_REASON_SMEM, &len);
 if (!IS_ERR(msg) && len > 0 && msg[0])
  dev_err(wcnss->dev, "fatal error received: %s\n", msg);

 rproc_report_crash(wcnss->rproc, RPROC_FATAL_ERROR);

 return IRQ_HANDLED;
}
