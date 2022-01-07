
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int BUSWAIT ;
 int buswait_bwait ;
 int usbhs_bset (struct usbhs_priv*,int ,int,int) ;
 int usbhs_get_dparam (struct usbhs_priv*,int ) ;

__attribute__((used)) static void usbhsc_set_buswait(struct usbhs_priv *priv)
{
 int wait = usbhs_get_dparam(priv, buswait_bwait);


 if (wait)
  usbhs_bset(priv, BUSWAIT, 0x000F, wait);
}
