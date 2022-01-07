
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usbhs_priv {int dummy; } ;


 int usbhs_read (struct usbhs_priv*,int ) ;
 int usbhs_write (struct usbhs_priv*,int ,int) ;

void usbhs_bset(struct usbhs_priv *priv, u32 reg, u16 mask, u16 data)
{
 u16 val = usbhs_read(priv, reg);

 val &= ~mask;
 val |= data & mask;

 usbhs_write(priv, reg, val);
}
