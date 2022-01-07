
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct intf_priv {int io_retevt_comp; int piorw_urb; } ;


 int GFP_ATOMIC ;
 int _FAIL ;
 int _SUCCESS ;
 int init_completion (int *) ;
 int usb_alloc_urb (int ,int ) ;

uint r8712_usb_init_intf_priv(struct intf_priv *pintfpriv)
{
 pintfpriv->piorw_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!pintfpriv->piorw_urb)
  return _FAIL;
 init_completion(&pintfpriv->io_retevt_comp);
 return _SUCCESS;
}
