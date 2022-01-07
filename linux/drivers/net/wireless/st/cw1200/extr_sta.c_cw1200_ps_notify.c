
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int vif; int hw; int sta_asleep_mask; } ;


 int CW1200_MAX_STA_IN_AP_MODE ;
 int STA_NOTIFY_AWAKE ;
 int STA_NOTIFY_SLEEP ;
 int __cw1200_sta_notify (int ,int ,int ,int) ;
 int pr_debug (char*,char*,int,int ) ;

__attribute__((used)) static void cw1200_ps_notify(struct cw1200_common *priv,
        int link_id, bool ps)
{
 if (link_id > CW1200_MAX_STA_IN_AP_MODE)
  return;

 pr_debug("%s for LinkId: %d. STAs asleep: %.8X\n",
   ps ? "Stop" : "Start",
   link_id, priv->sta_asleep_mask);

 __cw1200_sta_notify(priv->hw, priv->vif,
       ps ? STA_NOTIFY_SLEEP : STA_NOTIFY_AWAKE, link_id);
}
