
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxdone_entry_desc {int signal; int dev_flags; int rate_mode; } ;
struct rt2x00_rate {int plcp; int bitrate; int mcs; } ;
struct rt2x00_dev {size_t curr_band; struct ieee80211_supported_band* bands; } ;
struct ieee80211_supported_band {unsigned int n_bitrates; TYPE_1__* bitrates; } ;
struct TYPE_2__ {int hw_value; } ;


 int RATE_MCS (int,int) ;




 int RXDONE_SIGNAL_BITRATE ;
 int RXDONE_SIGNAL_MASK ;
 int RXDONE_SIGNAL_MCS ;
 int RXDONE_SIGNAL_PLCP ;
 struct rt2x00_rate* rt2x00_get_rate (int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*,int,int,int) ;

__attribute__((used)) static int rt2x00lib_rxdone_read_signal(struct rt2x00_dev *rt2x00dev,
     struct rxdone_entry_desc *rxdesc)
{
 struct ieee80211_supported_band *sband;
 const struct rt2x00_rate *rate;
 unsigned int i;
 int signal = rxdesc->signal;
 int type = (rxdesc->dev_flags & RXDONE_SIGNAL_MASK);

 switch (rxdesc->rate_mode) {
 case 131:
 case 128:




  if (rxdesc->dev_flags & RXDONE_SIGNAL_MCS)
   signal = RATE_MCS(rxdesc->rate_mode, signal);

  sband = &rt2x00dev->bands[rt2x00dev->curr_band];
  for (i = 0; i < sband->n_bitrates; i++) {
   rate = rt2x00_get_rate(sband->bitrates[i].hw_value);
   if (((type == RXDONE_SIGNAL_PLCP) &&
        (rate->plcp == signal)) ||
       ((type == RXDONE_SIGNAL_BITRATE) &&
         (rate->bitrate == signal)) ||
       ((type == RXDONE_SIGNAL_MCS) &&
         (rate->mcs == signal))) {
    return i;
   }
  }
  break;
 case 129:
 case 130:
  if (signal >= 0 && signal <= 76)
   return signal;
  break;
 default:
  break;
 }

 rt2x00_warn(rt2x00dev, "Frame received with unrecognized signal, mode=0x%.4x, signal=0x%.4x, type=%d\n",
      rxdesc->rate_mode, signal, type);
 return 0;
}
