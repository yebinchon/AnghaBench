
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct bq25890_device {int dev; } ;


 int BQ25890_IRQ_PIN ;
 int GPIOD_IN ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (int ,char*) ;
 struct gpio_desc* devm_gpiod_get (int ,int ,int ) ;
 int gpiod_to_irq (struct gpio_desc*) ;

__attribute__((used)) static int bq25890_irq_probe(struct bq25890_device *bq)
{
 struct gpio_desc *irq;

 irq = devm_gpiod_get(bq->dev, BQ25890_IRQ_PIN, GPIOD_IN);
 if (IS_ERR(irq)) {
  dev_err(bq->dev, "Could not probe irq pin.\n");
  return PTR_ERR(irq);
 }

 return gpiod_to_irq(irq);
}
