
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wiphy {TYPE_1__** bands; } ;
struct qtnf_wmac {int macid; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_4__ {int band; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int pr_err (char*,int ,int,int) ;
 int qtnf_band_init_rates (TYPE_1__*) ;
 int qtnf_cmd_band_info_get (struct qtnf_wmac*,TYPE_1__*) ;

__attribute__((used)) static int qtnf_mac_init_single_band(struct wiphy *wiphy,
         struct qtnf_wmac *mac,
         enum nl80211_band band)
{
 int ret;

 wiphy->bands[band] = kzalloc(sizeof(*wiphy->bands[band]), GFP_KERNEL);
 if (!wiphy->bands[band])
  return -ENOMEM;

 wiphy->bands[band]->band = band;

 ret = qtnf_cmd_band_info_get(mac, wiphy->bands[band]);
 if (ret) {
  pr_err("MAC%u: band %u: failed to get chans info: %d\n",
         mac->macid, band, ret);
  return ret;
 }

 qtnf_band_init_rates(wiphy->bands[band]);

 return 0;
}
