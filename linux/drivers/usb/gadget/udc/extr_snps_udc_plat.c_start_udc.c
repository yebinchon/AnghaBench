
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udc {int connected; int dev; scalar_t__ driver; } ;


 int dev_info (int ,char*) ;
 int udc_basic_init (struct udc*) ;
 int udc_enable_dev_setup_interrupts (struct udc*) ;

__attribute__((used)) static void start_udc(struct udc *udc)
{
 if (udc->driver) {
  dev_info(udc->dev, "Connecting...\n");
  udc_enable_dev_setup_interrupts(udc);
  udc_basic_init(udc);
  udc->connected = 1;
 }
}
