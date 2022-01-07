
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct asm9260_rtc_priv {int clk; scalar_t__ iobase; } ;


 int BM_AMR_OFF ;
 scalar_t__ HW_AMR ;
 int clk_disable_unprepare (int ) ;
 int iowrite32 (int ,scalar_t__) ;
 struct asm9260_rtc_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int asm9260_rtc_remove(struct platform_device *pdev)
{
 struct asm9260_rtc_priv *priv = platform_get_drvdata(pdev);


 iowrite32(BM_AMR_OFF, priv->iobase + HW_AMR);
 clk_disable_unprepare(priv->clk);
 return 0;
}
