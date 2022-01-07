
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_function {int dummy; } ;
struct phonet_port {int lock; int * usb; } ;
struct f_phonet {int dev; } ;
struct TYPE_4__ {unsigned int bInterfaceNumber; } ;
struct TYPE_3__ {unsigned int bInterfaceNumber; } ;


 int EINVAL ;
 struct f_phonet* func_to_pn (struct usb_function*) ;
 struct phonet_port* netdev_priv (int ) ;
 TYPE_2__ pn_control_intf_desc ;
 TYPE_1__ pn_data_intf_desc ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pn_get_alt(struct usb_function *f, unsigned intf)
{
 struct f_phonet *fp = func_to_pn(f);

 if (intf == pn_control_intf_desc.bInterfaceNumber)
  return 0;

 if (intf == pn_data_intf_desc.bInterfaceNumber) {
  struct phonet_port *port = netdev_priv(fp->dev);
  u8 alt;

  spin_lock(&port->lock);
  alt = port->usb != ((void*)0);
  spin_unlock(&port->lock);
  return alt;
 }

 return -EINVAL;
}
