
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_2__ {int center_freq; } ;
struct qlink_chandef {int width; int center_freq2; int center_freq1; TYPE_1__ chan; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int width; void* center_freq2; void* center_freq1; struct ieee80211_channel* chan; } ;


 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,void*) ;
 void* le16_to_cpu (int ) ;
 int qlink_chanwidth_to_nl (int ) ;

void qlink_chandef_q2cfg(struct wiphy *wiphy,
    const struct qlink_chandef *qch,
    struct cfg80211_chan_def *chdef)
{
 struct ieee80211_channel *chan;

 chan = ieee80211_get_channel(wiphy, le16_to_cpu(qch->chan.center_freq));

 chdef->chan = chan;
 chdef->center_freq1 = le16_to_cpu(qch->center_freq1);
 chdef->center_freq2 = le16_to_cpu(qch->center_freq2);
 chdef->width = qlink_chanwidth_to_nl(qch->width);
}
