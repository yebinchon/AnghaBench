
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int dummy; } ;


 int zd_usb_reset_rx_idle_timer (struct zd_usb*) ;

__attribute__((used)) static void zd_usb_reset_rx_idle_timer_tasklet(unsigned long param)
{
 struct zd_usb *usb = (struct zd_usb *)param;

 zd_usb_reset_rx_idle_timer(usb);
}
