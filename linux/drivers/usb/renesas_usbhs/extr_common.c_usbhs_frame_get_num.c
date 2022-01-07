
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int FRMNUM ;
 int FRNM_MASK ;
 int usbhs_read (struct usbhs_priv*,int ) ;

int usbhs_frame_get_num(struct usbhs_priv *priv)
{
 return usbhs_read(priv, FRMNUM) & FRNM_MASK;
}
