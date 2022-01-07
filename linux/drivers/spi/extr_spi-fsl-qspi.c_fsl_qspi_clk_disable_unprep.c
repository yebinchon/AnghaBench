
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qspi {int clk_en; int clk; int pm_qos_req; } ;


 int clk_disable_unprepare (int ) ;
 scalar_t__ needs_wakeup_wait_mode (struct fsl_qspi*) ;
 int pm_qos_remove_request (int *) ;

__attribute__((used)) static void fsl_qspi_clk_disable_unprep(struct fsl_qspi *q)
{
 if (needs_wakeup_wait_mode(q))
  pm_qos_remove_request(&q->pm_qos_req);

 clk_disable_unprepare(q->clk);
 clk_disable_unprepare(q->clk_en);
}
