
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;


 int GENMASK (int ,int ) ;
 int pipe_size ;
 int usbhs_get_dparam (struct usbhs_priv*,int ) ;
 int usbhs_write (struct usbhs_priv*,int,int) ;

void usbhs_xxxsts_clear(struct usbhs_priv *priv, u16 sts_reg, u16 bit)
{
 u16 pipe_mask = (u16)GENMASK(usbhs_get_dparam(priv, pipe_size), 0);

 usbhs_write(priv, sts_reg, ~(1 << bit) & pipe_mask);
}
