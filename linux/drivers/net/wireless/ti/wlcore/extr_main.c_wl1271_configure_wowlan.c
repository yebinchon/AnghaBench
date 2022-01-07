
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_rx_filter {int dummy; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_wowlan {int n_patterns; struct cfg80211_pkt_pattern* patterns; scalar_t__ any; } ;
struct cfg80211_pkt_pattern {int dummy; } ;


 int EINVAL ;
 int FILTER_DROP ;
 int FILTER_SIGNAL ;
 scalar_t__ WARN_ON (int) ;
 int WL1271_MAX_RX_FILTERS ;
 int wl1271_acx_default_rx_filter_enable (struct wl1271*,int,int ) ;
 int wl1271_convert_wowlan_pattern_to_rx_filter (struct cfg80211_pkt_pattern*,struct wl12xx_rx_filter**) ;
 int wl1271_rx_filter_clear_all (struct wl1271*) ;
 int wl1271_rx_filter_enable (struct wl1271*,int,int,struct wl12xx_rx_filter*) ;
 int wl1271_rx_filter_free (struct wl12xx_rx_filter*) ;
 int wl1271_validate_wowlan_pattern (struct cfg80211_pkt_pattern*) ;
 int wl1271_warning (char*,int) ;

__attribute__((used)) static int wl1271_configure_wowlan(struct wl1271 *wl,
       struct cfg80211_wowlan *wow)
{
 int i, ret;

 if (!wow || wow->any || !wow->n_patterns) {
  ret = wl1271_acx_default_rx_filter_enable(wl, 0,
         FILTER_SIGNAL);
  if (ret)
   goto out;

  ret = wl1271_rx_filter_clear_all(wl);
  if (ret)
   goto out;

  return 0;
 }

 if (WARN_ON(wow->n_patterns > WL1271_MAX_RX_FILTERS))
  return -EINVAL;


 for (i = 0; i < wow->n_patterns; i++) {
  ret = wl1271_validate_wowlan_pattern(&wow->patterns[i]);
  if (ret) {
   wl1271_warning("Bad wowlan pattern %d", i);
   return ret;
  }
 }

 ret = wl1271_acx_default_rx_filter_enable(wl, 0, FILTER_SIGNAL);
 if (ret)
  goto out;

 ret = wl1271_rx_filter_clear_all(wl);
 if (ret)
  goto out;


 for (i = 0; i < wow->n_patterns; i++) {
  struct cfg80211_pkt_pattern *p;
  struct wl12xx_rx_filter *filter = ((void*)0);

  p = &wow->patterns[i];

  ret = wl1271_convert_wowlan_pattern_to_rx_filter(p, &filter);
  if (ret) {
   wl1271_warning("Failed to create an RX filter from "
           "wowlan pattern %d", i);
   goto out;
  }

  ret = wl1271_rx_filter_enable(wl, i, 1, filter);

  wl1271_rx_filter_free(filter);
  if (ret)
   goto out;
 }

 ret = wl1271_acx_default_rx_filter_enable(wl, 1, FILTER_DROP);

out:
 return ret;
}
