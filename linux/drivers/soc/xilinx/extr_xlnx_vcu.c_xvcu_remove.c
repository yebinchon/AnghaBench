
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvcu_device {int aclk; int pll_ref; int logicore_reg_ba; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int VCU_GASKET_INIT ;
 int clk_disable_unprepare (int ) ;
 struct xvcu_device* platform_get_drvdata (struct platform_device*) ;
 int xvcu_write (int ,int ,int ) ;

__attribute__((used)) static int xvcu_remove(struct platform_device *pdev)
{
 struct xvcu_device *xvcu;

 xvcu = platform_get_drvdata(pdev);
 if (!xvcu)
  return -ENODEV;


 xvcu_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);

 clk_disable_unprepare(xvcu->pll_ref);
 clk_disable_unprepare(xvcu->aclk);

 return 0;
}
