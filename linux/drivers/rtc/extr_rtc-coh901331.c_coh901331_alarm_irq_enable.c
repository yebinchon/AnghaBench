
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct coh901331_port {int clk; scalar_t__ virtbase; } ;


 scalar_t__ COH901331_IRQ_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct coh901331_port* dev_get_drvdata (struct device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int coh901331_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct coh901331_port *rtap = dev_get_drvdata(dev);

 clk_enable(rtap->clk);
 if (enabled)
  writel(1, rtap->virtbase + COH901331_IRQ_MASK);
 else
  writel(0, rtap->virtbase + COH901331_IRQ_MASK);
 clk_disable(rtap->clk);

 return 0;
}
