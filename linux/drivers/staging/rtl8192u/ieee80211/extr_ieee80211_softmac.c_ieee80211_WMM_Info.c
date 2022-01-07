
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int wmm_info; } ;
struct ieee80211_device {TYPE_1__ current_network; } ;


 int MAX_SP_Len ;
 int MFIE_TYPE_GENERIC ;

__attribute__((used)) static void ieee80211_WMM_Info(struct ieee80211_device *ieee, u8 **tag_p)
{
 u8 *tag = *tag_p;

 *tag++ = MFIE_TYPE_GENERIC;
 *tag++ = 7;
 *tag++ = 0x00;
 *tag++ = 0x50;
 *tag++ = 0xf2;
 *tag++ = 0x02;
 *tag++ = 0x00;
 *tag++ = 0x01;






 *tag++ = MAX_SP_Len;

 *tag_p = tag;
}
