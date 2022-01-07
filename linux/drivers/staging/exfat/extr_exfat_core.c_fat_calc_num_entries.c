
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_name_t {int name_len; } ;
typedef int s32 ;



s32 fat_calc_num_entries(struct uni_name_t *p_uniname)
{
 s32 len;

 len = p_uniname->name_len;
 if (len == 0)
  return 0;


 return (len - 1) / 13 + 2;
}
