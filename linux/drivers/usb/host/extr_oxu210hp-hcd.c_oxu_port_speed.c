
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int dummy; } ;


 unsigned int USB_PORT_STAT_HIGH_SPEED ;
 unsigned int USB_PORT_STAT_LOW_SPEED ;

__attribute__((used)) static inline unsigned int oxu_port_speed(struct oxu_hcd *oxu,
      unsigned int portsc)
{
 switch ((portsc >> 26) & 3) {
 case 0:
  return 0;
 case 1:
  return USB_PORT_STAT_LOW_SPEED;
 case 2:
 default:
  return USB_PORT_STAT_HIGH_SPEED;
 }
}
