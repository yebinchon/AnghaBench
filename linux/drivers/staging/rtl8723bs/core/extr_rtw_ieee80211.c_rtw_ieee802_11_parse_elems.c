
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct rtw_ieee802_11_elems {int* ssid; int ssid_len; int* supp_rates; int supp_rates_len; int* fh_params; int fh_params_len; int* ds_params; int ds_params_len; int* cf_params; int cf_params_len; int* tim; int tim_len; int* ibss_params; int ibss_params_len; int* challenge; int challenge_len; int* erp_info; int erp_info_len; int* ext_supp_rates; int ext_supp_rates_len; int* rsn_ie; int rsn_ie_len; int* power_cap; int power_cap_len; int* supp_channels; int supp_channels_len; int* mdie; int mdie_len; int* ftie; int ftie_len; int* timeout_int; int timeout_int_len; int* ht_capabilities; int ht_capabilities_len; int* ht_operation; int ht_operation_len; int* vht_capabilities; int vht_capabilities_len; int* vht_operation; int vht_operation_len; int* vht_op_mode_notify; int vht_op_mode_notify_len; } ;
typedef int ParseRes ;


 int DBG_871X (char*,int,int,...) ;
 int ParseFailed ;
 int ParseOK ;
 int ParseUnknown ;
 int memset (struct rtw_ieee802_11_elems*,int ,int) ;
 int rtw_ieee802_11_parse_vendor_specific (int*,int,struct rtw_ieee802_11_elems*,int) ;

ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
    struct rtw_ieee802_11_elems *elems,
    int show_errors)
{
 uint left = len;
 u8 *pos = start;
 int unknown = 0;

 memset(elems, 0, sizeof(*elems));

 while (left >= 2) {
  u8 id, elen;

  id = *pos++;
  elen = *pos++;
  left -= 2;

  if (elen > left) {
   if (show_errors) {
    DBG_871X("IEEE 802.11 element "
        "parse failed (id =%d elen =%d "
        "left =%lu)\n",
        id, elen, (unsigned long) left);
   }
   return ParseFailed;
  }

  switch (id) {
  case 136:
   elems->ssid = pos;
   elems->ssid_len = elen;
   break;
  case 134:
   elems->supp_rates = pos;
   elems->supp_rates_len = elen;
   break;
  case 143:
   elems->fh_params = pos;
   elems->fh_params_len = elen;
   break;
  case 147:
   elems->ds_params = pos;
   elems->ds_params_len = elen;
   break;
  case 149:
   elems->cf_params = pos;
   elems->cf_params_len = elen;
   break;
  case 133:
   elems->tim = pos;
   elems->tim_len = elen;
   break;
  case 140:
   elems->ibss_params = pos;
   elems->ibss_params_len = elen;
   break;
  case 148:
   elems->challenge = pos;
   elems->challenge_len = elen;
   break;
  case 146:
   elems->erp_info = pos;
   elems->erp_info_len = elen;
   break;
  case 145:
   elems->ext_supp_rates = pos;
   elems->ext_supp_rates_len = elen;
   break;
  case 131:
   if (rtw_ieee802_11_parse_vendor_specific(pos, elen,
            elems,
            show_errors))
    unknown++;
   break;
  case 137:
   elems->rsn_ie = pos;
   elems->rsn_ie_len = elen;
   break;
  case 138:
   elems->power_cap = pos;
   elems->power_cap_len = elen;
   break;
  case 135:
   elems->supp_channels = pos;
   elems->supp_channels_len = elen;
   break;
  case 139:
   elems->mdie = pos;
   elems->mdie_len = elen;
   break;
  case 144:
   elems->ftie = pos;
   elems->ftie_len = elen;
   break;
  case 132:
   elems->timeout_int = pos;
   elems->timeout_int_len = elen;
   break;
  case 142:
   elems->ht_capabilities = pos;
   elems->ht_capabilities_len = elen;
   break;
  case 141:
   elems->ht_operation = pos;
   elems->ht_operation_len = elen;
   break;
  case 130:
   elems->vht_capabilities = pos;
   elems->vht_capabilities_len = elen;
   break;
  case 129:
   elems->vht_operation = pos;
   elems->vht_operation_len = elen;
   break;
  case 128:
   elems->vht_op_mode_notify = pos;
   elems->vht_op_mode_notify_len = elen;
   break;
  default:
   unknown++;
   if (!show_errors)
    break;
   DBG_871X("IEEE 802.11 element parse "
       "ignored unknown element (id =%d elen =%d)\n",
       id, elen);
   break;
  }

  left -= elen;
  pos += elen;
 }

 if (left)
  return ParseFailed;

 return unknown ? ParseUnknown : ParseOK;
}
