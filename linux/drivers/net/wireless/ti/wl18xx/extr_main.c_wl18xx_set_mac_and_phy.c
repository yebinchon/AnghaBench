
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy; } ;
struct wl18xx_priv {TYPE_1__ conf; } ;
struct wl18xx_mac_and_phy_params {int dummy; } ;
struct wl1271 {int * ptable; struct wl18xx_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PART_PHY_INIT ;
 int WL18XX_PHY_INIT_MEM_ADDR ;
 int kfree (struct wl18xx_mac_and_phy_params*) ;
 struct wl18xx_mac_and_phy_params* kmemdup (int *,int,int ) ;
 int wlcore_set_partition (struct wl1271*,int *) ;
 int wlcore_write (struct wl1271*,int ,struct wl18xx_mac_and_phy_params*,int,int) ;

__attribute__((used)) static int wl18xx_set_mac_and_phy(struct wl1271 *wl)
{
 struct wl18xx_priv *priv = wl->priv;
 struct wl18xx_mac_and_phy_params *params;
 int ret;

 params = kmemdup(&priv->conf.phy, sizeof(*params), GFP_KERNEL);
 if (!params) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wlcore_set_partition(wl, &wl->ptable[PART_PHY_INIT]);
 if (ret < 0)
  goto out;

 ret = wlcore_write(wl, WL18XX_PHY_INIT_MEM_ADDR, params,
      sizeof(*params), 0);

out:
 kfree(params);
 return ret;
}
