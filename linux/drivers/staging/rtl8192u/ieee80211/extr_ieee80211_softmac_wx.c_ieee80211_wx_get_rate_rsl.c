
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
union iwreq_data {TYPE_2__ bitrate; } ;
typedef int u32 ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int CurrentShowTxate; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;


 int TxCountToDataRate (struct ieee80211_device*,int ) ;

int ieee80211_wx_get_rate(struct ieee80211_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 u32 tmp_rate;

 tmp_rate = TxCountToDataRate(ieee, ieee->softmac_stats.CurrentShowTxate);

 wrqu->bitrate.value = tmp_rate * 500000;

 return 0;
}
