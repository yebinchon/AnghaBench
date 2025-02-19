
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct vnt_usb_send_context {struct ieee80211_hdr* hdr; } ;
struct vnt_mic_hdr {int id; int* ccmp_pn; int addr4; void* seq_ctrl; void* frame_control; int addr3; int addr2; int addr1; void* hlen; int mic_addr2; void* payload_len; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_key_conf {int cipher; int keylen; int * key; int tx_pn; scalar_t__ icv_len; } ;
struct ieee80211_hdr {int addr4; int frame_control; int seq_ctrl; int addr3; int addr2; int addr1; } ;






 int WLAN_KEY_LEN_CCMP ;
 int WLAN_KEY_LEN_WEP40 ;
 int atomic64_read (int *) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_le16 (int) ;
 int ether_addr_copy (int ,int ) ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int ieee80211_get_tkip_p2k (struct ieee80211_key_conf*,struct sk_buff*,int *) ;
 int ieee80211_has_a4 (int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
      u8 *key_buffer, struct ieee80211_key_conf *tx_key,
      struct sk_buff *skb, u16 payload_len,
      struct vnt_mic_hdr *mic_hdr)
{
 struct ieee80211_hdr *hdr = tx_context->hdr;
 u64 pn64;
 u8 *iv = ((u8 *)hdr + ieee80211_get_hdrlen_from_skb(skb));


 payload_len -= ieee80211_get_hdrlen_from_skb(skb);
 payload_len -= tx_key->icv_len;

 switch (tx_key->cipher) {
 case 128:
 case 129:
  memcpy(key_buffer, iv, 3);
  memcpy(key_buffer + 3, tx_key->key, tx_key->keylen);

  if (tx_key->keylen == WLAN_KEY_LEN_WEP40) {
   memcpy(key_buffer + 8, iv, 3);
   memcpy(key_buffer + 11,
          tx_key->key, WLAN_KEY_LEN_WEP40);
  }

  break;
 case 130:
  ieee80211_get_tkip_p2k(tx_key, skb, key_buffer);

  break;
 case 131:

  if (!mic_hdr)
   return;

  mic_hdr->id = 0x59;
  mic_hdr->payload_len = cpu_to_be16(payload_len);
  ether_addr_copy(mic_hdr->mic_addr2, hdr->addr2);

  pn64 = atomic64_read(&tx_key->tx_pn);
  mic_hdr->ccmp_pn[5] = pn64;
  mic_hdr->ccmp_pn[4] = pn64 >> 8;
  mic_hdr->ccmp_pn[3] = pn64 >> 16;
  mic_hdr->ccmp_pn[2] = pn64 >> 24;
  mic_hdr->ccmp_pn[1] = pn64 >> 32;
  mic_hdr->ccmp_pn[0] = pn64 >> 40;

  if (ieee80211_has_a4(hdr->frame_control))
   mic_hdr->hlen = cpu_to_be16(28);
  else
   mic_hdr->hlen = cpu_to_be16(22);

  ether_addr_copy(mic_hdr->addr1, hdr->addr1);
  ether_addr_copy(mic_hdr->addr2, hdr->addr2);
  ether_addr_copy(mic_hdr->addr3, hdr->addr3);

  mic_hdr->frame_control = cpu_to_le16(
   le16_to_cpu(hdr->frame_control) & 0xc78f);
  mic_hdr->seq_ctrl = cpu_to_le16(
    le16_to_cpu(hdr->seq_ctrl) & 0xf);

  if (ieee80211_has_a4(hdr->frame_control))
   ether_addr_copy(mic_hdr->addr4, hdr->addr4);

  memcpy(key_buffer, tx_key->key, WLAN_KEY_LEN_CCMP);

  break;
 default:
  break;
 }
}
