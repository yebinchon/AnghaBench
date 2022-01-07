
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static u8 _rtl8821ae_evm_dbm_jaguar(s8 value)
{
 s8 ret_val = value;


 if (ret_val == -128)
  ret_val = 127;
 else if (ret_val < 0)
  ret_val = 0 - ret_val;

 ret_val = ret_val >> 1;
 return ret_val;
}
