
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi433_device {int * gpiod; int * irq_num; } ;


 scalar_t__ IS_ERR (int ) ;
 int NUM_DIO ;
 int free_irq (int ,struct pi433_device*) ;
 int gpiod_put (int ) ;

__attribute__((used)) static void free_gpio(struct pi433_device *device)
{
 int i;

 for (i = 0; i < NUM_DIO; i++) {

  if (IS_ERR(device->gpiod[i]))
   continue;

  free_irq(device->irq_num[i], device);
  gpiod_put(device->gpiod[i]);
 }
}
