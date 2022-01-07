
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct mlme_ext_priv {TYPE_4__* channel_set; } ;
struct iw_request_info {int cmd; } ;
struct TYPE_8__ {int qual; int level; int updated; scalar_t__ noise; } ;
struct TYPE_7__ {int qual; int level; int noise; int updated; } ;
struct iw_range {int throughput; int num_bitrates; int we_version_source; size_t num_channels; size_t num_frequency; int enc_capa; int scan_capa; TYPE_5__* freq; int we_version_compiled; scalar_t__ pm_capa; int max_frag; int min_frag; int * bitrate; TYPE_3__ avg_qual; TYPE_2__ max_qual; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_10__ {scalar_t__ i; int m; int e; } ;
struct TYPE_9__ {scalar_t__ ChannelNum; } ;


 int IW_ENC_CAPA_CIPHER_CCMP ;
 int IW_ENC_CAPA_CIPHER_TKIP ;
 int IW_ENC_CAPA_WPA ;
 int IW_ENC_CAPA_WPA2 ;
 int IW_MAX_BITRATES ;
 size_t IW_MAX_FREQUENCIES ;
 int IW_SCAN_CAPA_BSSID ;
 int IW_SCAN_CAPA_CHANNEL ;
 int IW_SCAN_CAPA_ESSID ;
 int IW_SCAN_CAPA_MODE ;
 int IW_SCAN_CAPA_RATE ;
 int IW_SCAN_CAPA_TYPE ;
 int MAX_CHANNEL_NUM ;
 int MAX_FRAG_THRESHOLD ;
 int MIN_FRAG_THRESHOLD ;
 int RATE_COUNT ;
 int RT_TRACE (int ,int ,char*) ;
 int WIRELESS_EXT ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int memset (struct iw_range*,int ,int) ;
 int rtw_ch2freq (scalar_t__) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int * rtw_rates ;

__attribute__((used)) static int rtw_wx_get_range(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct iw_range *range = (struct iw_range *)extra;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 u16 val;
 int i;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_range. cmd_code =%x\n", info->cmd));

 wrqu->data.length = sizeof(*range);
 memset(range, 0, sizeof(*range));
 range->throughput = 5 * 1000 * 1000;




 range->max_qual.qual = 100;
 range->max_qual.level = 100;
 range->max_qual.noise = 100;
 range->max_qual.updated = 7;


 range->avg_qual.qual = 92;

 range->avg_qual.level = 256 - 78;
 range->avg_qual.noise = 0;
 range->avg_qual.updated = 7;

 range->num_bitrates = RATE_COUNT;

 for (i = 0; i < RATE_COUNT && i < IW_MAX_BITRATES; i++)
  range->bitrate[i] = rtw_rates[i];

 range->min_frag = MIN_FRAG_THRESHOLD;
 range->max_frag = MAX_FRAG_THRESHOLD;

 range->pm_capa = 0;

 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 16;

 for (i = 0, val = 0; i < MAX_CHANNEL_NUM; i++) {


  if (pmlmeext->channel_set[i].ChannelNum != 0) {
   range->freq[val].i = pmlmeext->channel_set[i].ChannelNum;
   range->freq[val].m = rtw_ch2freq(pmlmeext->channel_set[i].ChannelNum) * 100000;
   range->freq[val].e = 1;
   val++;
  }

  if (val == IW_MAX_FREQUENCIES)
   break;
 }

 range->num_channels = val;
 range->num_frequency = val;
 range->enc_capa = IW_ENC_CAPA_WPA|IW_ENC_CAPA_WPA2|
     IW_ENC_CAPA_CIPHER_TKIP|IW_ENC_CAPA_CIPHER_CCMP;

 range->scan_capa = IW_SCAN_CAPA_ESSID | IW_SCAN_CAPA_TYPE |IW_SCAN_CAPA_BSSID|
     IW_SCAN_CAPA_CHANNEL|IW_SCAN_CAPA_MODE|IW_SCAN_CAPA_RATE;

 return 0;
}
