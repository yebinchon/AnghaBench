
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int ) ;



 int RTW_CHANNEL_WIDTH_20 ;
 int RTW_CHANNEL_WIDTH_40 ;
 int RTW_CHANNEL_WIDTH_80 ;

__attribute__((used)) static u8 hw_bw_cap_to_bitamp(u8 bw_cap)
{
 u8 bw = 0;

 switch (bw_cap) {
 case 130:
 case 128:
  bw |= BIT(RTW_CHANNEL_WIDTH_80);

 case 129:
  bw |= BIT(RTW_CHANNEL_WIDTH_40);

 default:
  bw |= BIT(RTW_CHANNEL_WIDTH_20);
  break;
 }

 return bw;
}
