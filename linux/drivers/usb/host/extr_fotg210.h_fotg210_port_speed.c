
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int dummy; } ;


 unsigned int USB_PORT_STAT_HIGH_SPEED ;
 unsigned int USB_PORT_STAT_LOW_SPEED ;
 int fotg210_get_speed (struct fotg210_hcd*,unsigned int) ;

__attribute__((used)) static inline unsigned int
fotg210_port_speed(struct fotg210_hcd *fotg210, unsigned int portsc)
{
 switch (fotg210_get_speed(fotg210, portsc)) {
 case 0:
  return 0;
 case 1:
  return USB_PORT_STAT_LOW_SPEED;
 case 2:
 default:
  return USB_PORT_STAT_HIGH_SPEED;
 }
}
