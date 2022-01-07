
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int num_usb3_eps; } ;


 int ENXIO ;
 int USB3_PIPE_COM ;
 int usb3_write (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static int usb3_pn_change(struct renesas_usb3 *usb3, int num)
{
 if (num == 0 || num > usb3->num_usb3_eps)
  return -ENXIO;

 usb3_write(usb3, num, USB3_PIPE_COM);

 return 0;
}
