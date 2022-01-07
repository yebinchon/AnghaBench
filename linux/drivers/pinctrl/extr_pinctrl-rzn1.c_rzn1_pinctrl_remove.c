
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rzn1_pinctrl {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rzn1_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rzn1_pinctrl_remove(struct platform_device *pdev)
{
 struct rzn1_pinctrl *ipctl = platform_get_drvdata(pdev);

 clk_disable_unprepare(ipctl->clk);

 return 0;
}
