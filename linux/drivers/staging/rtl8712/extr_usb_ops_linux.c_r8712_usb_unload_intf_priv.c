
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intf_priv {scalar_t__ piorw_urb; } ;


 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

void r8712_usb_unload_intf_priv(struct intf_priv *pintfpriv)
{
 if (pintfpriv->piorw_urb) {
  usb_kill_urb(pintfpriv->piorw_urb);
  usb_free_urb(pintfpriv->piorw_urb);
 }
}
