
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int rec_count; int event_count; scalar_t__ dev_count; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static inline void hostif_counters_init(struct ks_wlan_private *priv)
{
 priv->dev_count = 0;
 atomic_set(&priv->event_count, 0);
 atomic_set(&priv->rec_count, 0);
}
