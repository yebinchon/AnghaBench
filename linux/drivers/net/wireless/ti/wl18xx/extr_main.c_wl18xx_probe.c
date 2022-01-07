
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_priv {int dummy; } ;
struct wl18xx_event_mailbox {int dummy; } ;
struct wl1271 {int ptable; int * ops; } ;
struct platform_device {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 scalar_t__ IS_ERR (struct ieee80211_hw*) ;
 int PTR_ERR (struct ieee80211_hw*) ;
 int WL18XX_AGGR_BUFFER_SIZE ;
 int wl1271_error (char*) ;
 int wl18xx_ops ;
 int wl18xx_ptable ;
 struct ieee80211_hw* wlcore_alloc_hw (int,int ,int) ;
 int wlcore_free_hw (struct wl1271*) ;
 int wlcore_probe (struct wl1271*,struct platform_device*) ;

__attribute__((used)) static int wl18xx_probe(struct platform_device *pdev)
{
 struct wl1271 *wl;
 struct ieee80211_hw *hw;
 int ret;

 hw = wlcore_alloc_hw(sizeof(struct wl18xx_priv),
        WL18XX_AGGR_BUFFER_SIZE,
        sizeof(struct wl18xx_event_mailbox));
 if (IS_ERR(hw)) {
  wl1271_error("can't allocate hw");
  ret = PTR_ERR(hw);
  goto out;
 }

 wl = hw->priv;
 wl->ops = &wl18xx_ops;
 wl->ptable = wl18xx_ptable;
 ret = wlcore_probe(wl, pdev);
 if (ret)
  goto out_free;

 return ret;

out_free:
 wlcore_free_hw(wl);
out:
 return ret;
}
