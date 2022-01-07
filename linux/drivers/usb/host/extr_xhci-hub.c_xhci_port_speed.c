
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEV_HIGHSPEED (unsigned int) ;
 scalar_t__ DEV_LOWSPEED (unsigned int) ;
 unsigned int USB_PORT_STAT_HIGH_SPEED ;
 unsigned int USB_PORT_STAT_LOW_SPEED ;

__attribute__((used)) static unsigned int xhci_port_speed(unsigned int port_status)
{
 if (DEV_LOWSPEED(port_status))
  return USB_PORT_STAT_LOW_SPEED;
 if (DEV_HIGHSPEED(port_status))
  return USB_PORT_STAT_HIGH_SPEED;





 return 0;
}
