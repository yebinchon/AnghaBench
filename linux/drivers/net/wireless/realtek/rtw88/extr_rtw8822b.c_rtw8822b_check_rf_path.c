
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static bool rtw8822b_check_rf_path(u8 antenna)
{
 switch (antenna) {
 case 130:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
