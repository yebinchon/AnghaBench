
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpio_priv {int io; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 struct dpio_priv* dev_get_drvdata (struct device*) ;
 int dpaa2_io_irq (int ) ;

__attribute__((used)) static irqreturn_t dpio_irq_handler(int irq_num, void *arg)
{
 struct device *dev = (struct device *)arg;
 struct dpio_priv *priv = dev_get_drvdata(dev);

 return dpaa2_io_irq(priv->io);
}
