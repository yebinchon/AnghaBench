
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct usbhs_priv {scalar_t__ base; } ;


 int ioread16 (scalar_t__) ;

u16 usbhs_read(struct usbhs_priv *priv, u32 reg)
{
 return ioread16(priv->base + reg);
}
