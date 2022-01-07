
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qspi {int pm_qos_req; int clk_en; int clk; } ;


 int PM_QOS_CPU_DMA_LATENCY ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 scalar_t__ needs_wakeup_wait_mode (struct fsl_qspi*) ;
 int pm_qos_add_request (int *,int ,int ) ;

__attribute__((used)) static int fsl_qspi_clk_prep_enable(struct fsl_qspi *q)
{
 int ret;

 ret = clk_prepare_enable(q->clk_en);
 if (ret)
  return ret;

 ret = clk_prepare_enable(q->clk);
 if (ret) {
  clk_disable_unprepare(q->clk_en);
  return ret;
 }

 if (needs_wakeup_wait_mode(q))
  pm_qos_add_request(&q->pm_qos_req, PM_QOS_CPU_DMA_LATENCY, 0);

 return 0;
}
