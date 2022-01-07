
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct survey_info {scalar_t__ filled; int channel; } ;
struct TYPE_2__ {int chan; } ;
struct ieee80211_conf {TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;


 int ENOENT ;

__attribute__((used)) static int wl1271_op_get_survey(struct ieee80211_hw *hw, int idx,
    struct survey_info *survey)
{
 struct ieee80211_conf *conf = &hw->conf;

 if (idx != 0)
  return -ENOENT;

 survey->channel = conf->chandef.chan;
 survey->filled = 0;
 return 0;
}
