
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int dummy; } ;


 unsigned int _SUCCESS ;
 int r8712_usb_read_port_cancel (struct _adapter*) ;

unsigned int r8712_usb_inirp_deinit(struct _adapter *adapter)
{
 r8712_usb_read_port_cancel(adapter);
 return _SUCCESS;
}
