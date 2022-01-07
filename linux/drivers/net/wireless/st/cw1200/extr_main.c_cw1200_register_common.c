
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; struct cw1200_common* priv; } ;
struct cw1200_common {int pm_state; } ;


 int cw1200_debug_init (struct cw1200_common*) ;
 int cw1200_pm_deinit (int *) ;
 int cw1200_pm_init (int *,struct cw1200_common*) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int pr_err (char*,int) ;
 int pr_info (char*,int ) ;
 int wiphy_name (int ) ;

__attribute__((used)) static int cw1200_register_common(struct ieee80211_hw *dev)
{
 struct cw1200_common *priv = dev->priv;
 int err;
 err = ieee80211_register_hw(dev);
 if (err) {
  pr_err("Cannot register device (%d).\n",
         err);



  return err;
 }

 cw1200_debug_init(priv);

 pr_info("Registered as '%s'\n", wiphy_name(dev->wiphy));
 return 0;
}
