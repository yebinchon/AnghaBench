
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_chip {int gpiod; int dev; } ;


 int dev_dbg (int ,char*,int ,int) ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void nvec_gpio_set_value(struct nvec_chip *nvec, int value)
{
 dev_dbg(nvec->dev, "GPIO changed from %u to %u\n",
  gpiod_get_value(nvec->gpiod), value);
 gpiod_set_value(nvec->gpiod, value);
}
