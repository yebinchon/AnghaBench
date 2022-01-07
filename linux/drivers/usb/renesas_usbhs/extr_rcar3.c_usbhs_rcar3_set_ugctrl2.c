
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbhs_priv {int dummy; } ;


 int UGCTRL2 ;
 int UGCTRL2_RESERVED_3 ;
 int usbhs_write32 (struct usbhs_priv*,int ,int) ;

__attribute__((used)) static void usbhs_rcar3_set_ugctrl2(struct usbhs_priv *priv, u32 val)
{
 usbhs_write32(priv, UGCTRL2, val | UGCTRL2_RESERVED_3);
}
