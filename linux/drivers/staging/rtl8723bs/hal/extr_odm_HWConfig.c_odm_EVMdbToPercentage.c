
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static u8 odm_EVMdbToPercentage(s8 Value)
{



 s8 ret_val;

 ret_val = Value;
 ret_val /= 2;




 if (ret_val >= 0)
  ret_val = 0;
 if (ret_val <= -33)
  ret_val = -33;

 ret_val = 0 - ret_val;
 ret_val *= 3;

 if (ret_val == 99)
  ret_val = 100;

 return ret_val;
}
