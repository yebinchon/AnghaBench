
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct coh901331_port {int clk; scalar_t__ virtbase; } ;


 scalar_t__ COH901331_IRQ_MASK ;
 int clk_disable_unprepare (int ) ;
 int clk_enable (int ) ;
 struct coh901331_port* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void coh901331_shutdown(struct platform_device *pdev)
{
 struct coh901331_port *rtap = platform_get_drvdata(pdev);

 clk_enable(rtap->clk);
 writel(0, rtap->virtbase + COH901331_IRQ_MASK);
 clk_disable_unprepare(rtap->clk);
}
