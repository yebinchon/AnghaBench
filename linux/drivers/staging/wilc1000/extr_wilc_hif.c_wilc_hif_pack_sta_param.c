
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct station_parameters {scalar_t__ supported_rates_len; int sta_flags_set; int sta_flags_mask; scalar_t__ ht_capa; scalar_t__* supported_rates; int aid; } ;
struct ieee80211_ht_cap {int dummy; } ;


 int ETH_ALEN ;
 int ether_addr_copy (int *,int const*) ;
 int memcpy (int *,scalar_t__*,int) ;
 int put_unaligned_le16 (int ,int *) ;

__attribute__((used)) static void wilc_hif_pack_sta_param(u8 *cur_byte, const u8 *mac,
        struct station_parameters *params)
{
 ether_addr_copy(cur_byte, mac);
 cur_byte += ETH_ALEN;

 put_unaligned_le16(params->aid, cur_byte);
 cur_byte += 2;

 *cur_byte++ = params->supported_rates_len;
 if (params->supported_rates_len > 0)
  memcpy(cur_byte, params->supported_rates,
         params->supported_rates_len);
 cur_byte += params->supported_rates_len;

 if (params->ht_capa) {
  *cur_byte++ = 1;
  memcpy(cur_byte, &params->ht_capa,
         sizeof(struct ieee80211_ht_cap));
 } else {
  *cur_byte++ = 0;
 }
 cur_byte += sizeof(struct ieee80211_ht_cap);

 put_unaligned_le16(params->sta_flags_mask, cur_byte);
 cur_byte += 2;
 put_unaligned_le16(params->sta_flags_set, cur_byte);
}
