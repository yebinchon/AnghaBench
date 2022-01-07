
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpa_oui_type ;
typedef int val16 ;
typedef int uint ;
typedef unsigned char u8 ;
typedef int u16 ;
typedef int __le16 ;


 int _WPA_IE_ID_ ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (unsigned char*,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* rtw_get_ie (unsigned char*,int ,int*,int) ;

unsigned char *rtw_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
{
 uint len;
 u16 val16;
 __le16 le_tmp;
 static const unsigned char wpa_oui_type[] = {0x00, 0x50, 0xf2, 0x01};
 u8 *pbuf = pie;
 int limit_new = limit;

 while (1) {
  pbuf = rtw_get_ie(pbuf, _WPA_IE_ID_, &len, limit_new);

  if (pbuf) {

   if (memcmp((pbuf + 2), wpa_oui_type, sizeof(wpa_oui_type)))
    goto check_next_ie;


   memcpy((u8 *)&le_tmp, (pbuf + 6), sizeof(val16));

   val16 = le16_to_cpu(le_tmp);
   if (val16 != 0x0001)
    goto check_next_ie;
   *wpa_ie_len = *(pbuf + 1);
   return pbuf;
  } else {
   *wpa_ie_len = 0;
   return ((void*)0);
  }

check_next_ie:
  limit_new = limit - (pbuf - pie) - 2 - len;
  if (limit_new <= 0)
   break;
  pbuf += (2 + len);
 }
 *wpa_ie_len = 0;
 return ((void*)0);
}
