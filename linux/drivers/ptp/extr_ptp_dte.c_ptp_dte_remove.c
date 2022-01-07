
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ptp_dte {scalar_t__ regs; int ptp_clk; } ;
struct platform_device {int dummy; } ;


 int DTE_NUM_REGS_TO_RESTORE ;
 struct ptp_dte* platform_get_drvdata (struct platform_device*) ;
 int ptp_clock_unregister (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ptp_dte_remove(struct platform_device *pdev)
{
 struct ptp_dte *ptp_dte = platform_get_drvdata(pdev);
 u8 i;

 ptp_clock_unregister(ptp_dte->ptp_clk);

 for (i = 0; i < DTE_NUM_REGS_TO_RESTORE; i++)
  writel(0, ptp_dte->regs + (i * sizeof(u32)));

 return 0;
}
