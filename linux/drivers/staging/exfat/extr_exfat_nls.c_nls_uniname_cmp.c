
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct super_block {int dummy; } ;


 int MAX_NAME_LENGTH ;
 scalar_t__ nls_upper (struct super_block*,int) ;

int nls_uniname_cmp(struct super_block *sb, u16 *a, u16 *b)
{
 int i;

 for (i = 0; i < MAX_NAME_LENGTH; i++, a++, b++) {
  if (nls_upper(sb, *a) != nls_upper(sb, *b))
   return 1;
  if (*a == 0x0)
   return 0;
 }
 return 0;
}
