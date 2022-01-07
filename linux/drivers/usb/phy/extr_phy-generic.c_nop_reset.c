
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_generic {int gpiod_reset; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void nop_reset(struct usb_phy_generic *nop)
{
 if (!nop->gpiod_reset)
  return;

 gpiod_set_value_cansleep(nop->gpiod_reset, 1);
 usleep_range(10000, 20000);
 gpiod_set_value_cansleep(nop->gpiod_reset, 0);
}
