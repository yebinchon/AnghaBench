
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned char id; int body; void* size; } ;
struct TYPE_7__ {unsigned char id; int body; void* size; } ;
struct TYPE_6__ {size_t size; int * body; } ;
struct TYPE_5__ {int body; void* size; } ;
struct local_ap {TYPE_4__ wpa_ie; TYPE_3__ rsn_ie; TYPE_2__ rate_set; TYPE_1__ ssid; int channel; void* capability; int noise; int sq; int rssi; int bssid; } ;
struct ks_wlan_private {int net_dev; } ;
struct ap_info {unsigned char* body; int body_size; int ch_info; int capability; int noise; int sq; int rssi; int bssid; } ;


 int CIPHER_ID_WPA_WEP40 ;
 int IEEE80211_MAX_SSID_LEN ;
 unsigned char RATE_SET_MAX_SIZE ;
 int RSN_IE_BODY_MAX ;
 int ether_addr_copy (int ,int ) ;
 void* le16_to_cpu (int ) ;
 int memcmp (unsigned char*,int ,int) ;
 int memcpy (int *,unsigned char*,unsigned char) ;
 int memset (struct local_ap*,int ,int) ;
 int netdev_err (int ,char*,unsigned char) ;
 void* read_ie (unsigned char*,int ,int ) ;

__attribute__((used)) static
int get_ap_information(struct ks_wlan_private *priv, struct ap_info *ap_info,
         struct local_ap *ap)
{
 unsigned char *bp;
 int bsize, offset;

 memset(ap, 0, sizeof(struct local_ap));

 ether_addr_copy(ap->bssid, ap_info->bssid);
 ap->rssi = ap_info->rssi;
 ap->sq = ap_info->sq;
 ap->noise = ap_info->noise;
 ap->capability = le16_to_cpu(ap_info->capability);
 ap->channel = ap_info->ch_info;

 bp = ap_info->body;
 bsize = le16_to_cpu(ap_info->body_size);
 offset = 0;

 while (bsize > offset) {
  switch (*bp) {
  case 131:
   ap->ssid.size = read_ie(bp, IEEE80211_MAX_SSID_LEN,
      ap->ssid.body);
   break;
  case 130:
  case 135:
   if ((*(bp + 1) + ap->rate_set.size) <=
       RATE_SET_MAX_SIZE) {
    memcpy(&ap->rate_set.body[ap->rate_set.size],
           bp + 2, *(bp + 1));
    ap->rate_set.size += *(bp + 1);
   } else {
    memcpy(&ap->rate_set.body[ap->rate_set.size],
           bp + 2,
           RATE_SET_MAX_SIZE - ap->rate_set.size);
    ap->rate_set.size +=
        (RATE_SET_MAX_SIZE - ap->rate_set.size);
   }
   break;
  case 132:
   ap->rsn_ie.id = *bp;
   ap->rsn_ie.size = read_ie(bp, RSN_IE_BODY_MAX,
        ap->rsn_ie.body);
   break;
  case 128:

   if (memcmp(bp + 2, CIPHER_ID_WPA_WEP40, 4) == 0) {
    ap->wpa_ie.id = *bp;
    ap->wpa_ie.size = read_ie(bp, RSN_IE_BODY_MAX,
         ap->wpa_ie.body);
   }
   break;
  case 137:
  case 134:
  case 139:
  case 129:
  case 133:
  case 138:
  case 136:
   break;
  default:
   netdev_err(priv->net_dev,
       "unknown Element ID=%d\n", *bp);
   break;
  }

  offset += 2;
  offset += *(bp + 1);
  bp += (*(bp + 1) + 2);
 }

 return 0;
}
