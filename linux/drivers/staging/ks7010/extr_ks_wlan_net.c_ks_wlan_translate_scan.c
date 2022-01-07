
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_18__ {scalar_t__ id; scalar_t__ size; } ;
struct TYPE_17__ {int size; int* body; } ;
struct TYPE_14__ {int size; int body; } ;
struct local_ap {int capability; int channel; TYPE_9__ wpa_ie; TYPE_9__ rsn_ie; TYPE_8__ rate_set; TYPE_5__ ssid; int sq; scalar_t__ rssi; int bssid; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_15__ {int value; scalar_t__ disabled; scalar_t__ fixed; } ;
struct TYPE_13__ {int length; int flags; } ;
struct TYPE_12__ {scalar_t__ noise; int qual; scalar_t__ level; } ;
struct TYPE_11__ {int m; int e; } ;
struct TYPE_10__ {int sa_data; int sa_family; } ;
struct TYPE_16__ {TYPE_6__ bitrate; TYPE_4__ data; TYPE_3__ qual; TYPE_2__ freq; int mode; TYPE_1__ ap_addr; } ;
struct iw_event {TYPE_7__ u; int cmd; } ;


 int ARPHRD_ETHER ;
 int IWEVQUAL ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_NOKEY ;
 int IW_EV_ADDR_LEN ;
 int IW_EV_FREQ_LEN ;
 long IW_EV_LCP_LEN ;
 int IW_EV_PARAM_LEN ;
 int IW_EV_QUAL_LEN ;
 int IW_EV_UINT_LEN ;
 int IW_MODE_ADHOC ;
 int IW_MODE_INFRA ;
 scalar_t__ RSN_INFO_ELEM_ID ;
 int SIOCGIWAP ;
 int SIOCGIWENCODE ;
 int SIOCGIWESSID ;
 int SIOCGIWFREQ ;
 int SIOCGIWMODE ;
 int SIOCGIWRATE ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_IBSS ;
 int WLAN_CAPABILITY_PRIVACY ;
 scalar_t__ WPA_INFO_ELEM_ID ;
 int ether_addr_copy (int ,int ) ;
 int* frequency_list ;
 char* iwe_stream_add_event (struct iw_request_info*,char*,char*,struct iw_event*,int ) ;
 char* iwe_stream_add_point (struct iw_request_info*,char*,char*,struct iw_event*,int ) ;
 char* iwe_stream_add_value (struct iw_request_info*,char*,char*,char*,struct iw_event*,int ) ;
 char* ks_wlan_add_leader_event (char const*,char*,char*,TYPE_9__*,struct iw_event*,struct iw_request_info*) ;

__attribute__((used)) static inline char *ks_wlan_translate_scan(struct net_device *dev,
        struct iw_request_info *info,
        char *current_ev, char *end_buf,
        struct local_ap *ap)
{

 static const char rsn_leader[] = "rsn_ie=";
 static const char wpa_leader[] = "wpa_ie=";
 struct iw_event iwe;
 u16 capabilities;
 char *current_val;
 int i;


 iwe.cmd = SIOCGIWAP;
 iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
 ether_addr_copy(iwe.u.ap_addr.sa_data, ap->bssid);
 current_ev = iwe_stream_add_event(info, current_ev,
       end_buf, &iwe, IW_EV_ADDR_LEN);




 iwe.u.data.length = ap->ssid.size;
 if (iwe.u.data.length > 32)
  iwe.u.data.length = 32;
 iwe.cmd = SIOCGIWESSID;
 iwe.u.data.flags = 1;
 current_ev = iwe_stream_add_point(info, current_ev,
       end_buf, &iwe, ap->ssid.body);


 iwe.cmd = SIOCGIWMODE;
 capabilities = ap->capability;
 if (capabilities & (WLAN_CAPABILITY_ESS | WLAN_CAPABILITY_IBSS)) {
  iwe.u.mode = (capabilities & WLAN_CAPABILITY_ESS) ?
         IW_MODE_INFRA : IW_MODE_ADHOC;
  current_ev = iwe_stream_add_event(info, current_ev,
        end_buf, &iwe, IW_EV_UINT_LEN);
 }


 iwe.cmd = SIOCGIWFREQ;
 iwe.u.freq.m = ap->channel;
 iwe.u.freq.m = frequency_list[iwe.u.freq.m - 1] * 100000;
 iwe.u.freq.e = 1;
 current_ev = iwe_stream_add_event(info, current_ev,
       end_buf, &iwe, IW_EV_FREQ_LEN);


 iwe.cmd = IWEVQUAL;
 iwe.u.qual.level = 256 - ap->rssi;
 iwe.u.qual.qual = ap->sq;
 iwe.u.qual.noise = 0;
 current_ev = iwe_stream_add_event(info, current_ev, end_buf,
       &iwe, IW_EV_QUAL_LEN);


 iwe.cmd = SIOCGIWENCODE;
 iwe.u.data.flags = (capabilities & WLAN_CAPABILITY_PRIVACY) ?
       (IW_ENCODE_ENABLED | IW_ENCODE_NOKEY) :
        IW_ENCODE_DISABLED;
 iwe.u.data.length = 0;
 current_ev = iwe_stream_add_point(info, current_ev, end_buf,
       &iwe, ap->ssid.body);





 current_val = current_ev + IW_EV_LCP_LEN;

 iwe.cmd = SIOCGIWRATE;


 iwe.u.bitrate.fixed = 0;
 iwe.u.bitrate.disabled = 0;


 for (i = 0; i < 16; i++) {

  if (i >= ap->rate_set.size)
   break;

  iwe.u.bitrate.value = ((ap->rate_set.body[i] & 0x7f) * 500000);

  current_val = iwe_stream_add_value(info, current_ev,
         current_val, end_buf, &iwe,
         IW_EV_PARAM_LEN);
 }

 if ((current_val - current_ev) > IW_EV_LCP_LEN)
  current_ev = current_val;

 if (ap->rsn_ie.id == RSN_INFO_ELEM_ID && ap->rsn_ie.size != 0)
  current_ev = ks_wlan_add_leader_event(rsn_leader, end_buf,
            current_ev, &ap->rsn_ie,
            &iwe, info);

 if (ap->wpa_ie.id == WPA_INFO_ELEM_ID && ap->wpa_ie.size != 0)
  current_ev = ks_wlan_add_leader_event(wpa_leader, end_buf,
            current_ev, &ap->wpa_ie,
            &iwe, info);





 return current_ev;
}
