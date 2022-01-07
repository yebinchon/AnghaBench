
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int multi_clks; } ;
struct usbhs_priv {TYPE_1__ dparam; } ;



__attribute__((used)) static bool usbhsc_is_multi_clks(struct usbhs_priv *priv)
{
 return priv->dparam.multi_clks;
}
