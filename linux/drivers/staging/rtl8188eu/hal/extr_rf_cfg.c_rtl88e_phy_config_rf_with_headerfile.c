
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int* Array_RadioA_1T_8188E ;
 int READ_NEXT_PAIR (int,int,int) ;
 int check_condition (struct adapter*,int) ;
 int rtl8188e_config_rf_reg (struct adapter*,int,int) ;

__attribute__((used)) static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
{
 u32 i;
 u32 array_len = ARRAY_SIZE(Array_RadioA_1T_8188E);
 u32 *array = Array_RadioA_1T_8188E;

 for (i = 0; i < array_len; i += 2) {
  u32 v1 = array[i];
  u32 v2 = array[i+1];

  if (v1 < 0xCDCDCDCD) {
   rtl8188e_config_rf_reg(adapt, v1, v2);
   continue;
  } else {
   if (!check_condition(adapt, array[i])) {
    READ_NEXT_PAIR(v1, v2, i);
    while (v2 != 0xDEAD && v2 != 0xCDEF &&
           v2 != 0xCDCD && i < array_len - 2)
     READ_NEXT_PAIR(v1, v2, i);
    i -= 2;
   } else {
    READ_NEXT_PAIR(v1, v2, i);
    while (v2 != 0xDEAD && v2 != 0xCDEF &&
           v2 != 0xCDCD && i < array_len - 2) {
      rtl8188e_config_rf_reg(adapt, v1, v2);
      READ_NEXT_PAIR(v1, v2, i);
    }

    while (v2 != 0xDEAD && i < array_len - 2)
     READ_NEXT_PAIR(v1, v2, i);
   }
  }
 }
 return 1;
}
