
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s8 ;


 int BIT (int) ;

__attribute__((used)) static u16 odm_cfo(s8 value)
{
 int ret_val;

 if (value < 0) {
  ret_val = 0 - value;
  ret_val = (ret_val << 1) + (ret_val >> 1);

  ret_val = ret_val | BIT(12);
 } else {
  ret_val = value;
  ret_val = (ret_val << 1) + (ret_val >> 1);
 }
 return ret_val;
}
