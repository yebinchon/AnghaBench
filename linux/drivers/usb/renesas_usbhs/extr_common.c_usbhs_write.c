
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct usbhs_priv {scalar_t__ base; } ;


 int iowrite16 (int ,scalar_t__) ;

void usbhs_write(struct usbhs_priv *priv, u32 reg, u16 data)
{
 iowrite16(data, priv->base + reg);
}
