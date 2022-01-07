
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bt_chip_type; } ;
struct btc_coexist {TYPE_1__ board_info; } ;


 int BTC_CHIP_CSR_BC4 ;
 int BTC_CHIP_CSR_BC8 ;
 int BTC_CHIP_RTL8723A ;
 int BTC_CHIP_RTL8723B ;
 int BTC_CHIP_RTL8821 ;
 int BTC_CHIP_UNDEF ;
void exhalbtc_set_chip_type(struct btc_coexist *btcoexist, u8 chip_type)
{
 switch (chip_type) {
 default:
 case 136:
 case 132:
 case 135:
 case 129:
  btcoexist->board_info.bt_chip_type = BTC_CHIP_UNDEF;
  break;
 case 134:
  btcoexist->board_info.bt_chip_type = BTC_CHIP_CSR_BC4;
  break;
 case 133:
  btcoexist->board_info.bt_chip_type = BTC_CHIP_CSR_BC8;
  break;
 case 131:
  btcoexist->board_info.bt_chip_type = BTC_CHIP_RTL8723A;
  break;
 case 128:
  btcoexist->board_info.bt_chip_type = BTC_CHIP_RTL8821;
  break;
 case 130:
  btcoexist->board_info.bt_chip_type = BTC_CHIP_RTL8723B;
  break;
 }
}
