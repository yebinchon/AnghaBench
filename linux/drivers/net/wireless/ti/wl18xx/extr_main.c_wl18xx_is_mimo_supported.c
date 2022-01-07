
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; } ;
struct TYPE_4__ {int number_of_assembled_ant2_4; } ;
struct TYPE_6__ {TYPE_2__ ht; TYPE_1__ phy; } ;
struct wl18xx_priv {TYPE_3__ conf; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;


 scalar_t__ HT_MODE_SISO20 ;
 scalar_t__ HT_MODE_WIDE ;

__attribute__((used)) static bool wl18xx_is_mimo_supported(struct wl1271 *wl)
{
 struct wl18xx_priv *priv = wl->priv;




 return (priv->conf.phy.number_of_assembled_ant2_4 >= 2) &&
        (priv->conf.ht.mode != HT_MODE_WIDE) &&
        (priv->conf.ht.mode != HT_MODE_SISO20);
}
