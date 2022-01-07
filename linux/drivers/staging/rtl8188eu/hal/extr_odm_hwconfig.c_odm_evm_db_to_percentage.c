
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;


 int clamp (int,int ,int) ;

__attribute__((used)) static u8 odm_evm_db_to_percentage(s8 value)
{

 s8 ret_val = clamp(-value, 0, 33) * 3;

 if (ret_val == 99)
  ret_val = 100;

 return ret_val;
}
