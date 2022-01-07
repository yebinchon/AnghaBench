
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; void* center_freq; void* hw_value; } ;
struct qlink_chandef {int width; void* center_freq2; void* center_freq1; TYPE_1__ chan; } ;
struct ieee80211_channel {int flags; int center_freq; int hw_value; } ;
struct cfg80211_chan_def {int width; int center_freq2; int center_freq1; struct ieee80211_channel* chan; } ;


 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int qlink_chanwidth_nl_to_qlink (int ) ;

void qlink_chandef_cfg2q(const struct cfg80211_chan_def *chdef,
    struct qlink_chandef *qch)
{
 struct ieee80211_channel *chan = chdef->chan;

 qch->chan.hw_value = cpu_to_le16(chan->hw_value);
 qch->chan.center_freq = cpu_to_le16(chan->center_freq);
 qch->chan.flags = cpu_to_le32(chan->flags);

 qch->center_freq1 = cpu_to_le16(chdef->center_freq1);
 qch->center_freq2 = cpu_to_le16(chdef->center_freq2);
 qch->width = qlink_chanwidth_nl_to_qlink(chdef->width);
}
