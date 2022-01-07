
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int dummy; } ;


 int MAX_SP_Len ;
 int MFIE_TYPE_GENERIC ;

__attribute__((used)) static void rtllib_WMM_Info(struct rtllib_device *ieee, u8 **tag_p)
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
