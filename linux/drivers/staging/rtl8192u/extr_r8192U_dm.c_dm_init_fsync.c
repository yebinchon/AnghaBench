
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int framesyncMonitor; int fsync_timer; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int fsync_time_interval; int fsync_rate_bitmap; int fsync_rssi_threshold; int bfsync_enable; int fsync_multiple_timeinterval; int fsync_firstdiff_ratethreshold; int fsync_seconddiff_ratethreshold; int fsync_state; } ;


 int Default_Fsync ;
 int dm_fsync_timer_callback ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void dm_init_fsync(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->ieee80211->fsync_time_interval = 500;
 priv->ieee80211->fsync_rate_bitmap = 0x0f000800;
 priv->ieee80211->fsync_rssi_threshold = 30;
 priv->ieee80211->bfsync_enable = 0;
 priv->ieee80211->fsync_multiple_timeinterval = 3;
 priv->ieee80211->fsync_firstdiff_ratethreshold = 100;
 priv->ieee80211->fsync_seconddiff_ratethreshold = 200;
 priv->ieee80211->fsync_state = Default_Fsync;
 priv->framesyncMonitor = 1;
 timer_setup(&priv->fsync_timer, dm_fsync_timer_callback, 0);
}
