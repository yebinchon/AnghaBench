
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_spicc_device {int core; scalar_t__ base; } ;


 scalar_t__ SPICC_CONREG ;
 int clk_disable_unprepare (int ) ;
 struct meson_spicc_device* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_spicc_remove(struct platform_device *pdev)
{
 struct meson_spicc_device *spicc = platform_get_drvdata(pdev);


 writel(0, spicc->base + SPICC_CONREG);

 clk_disable_unprepare(spicc->core);

 return 0;
}
