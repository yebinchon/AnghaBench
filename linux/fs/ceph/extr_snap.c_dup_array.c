
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
typedef int __le64 ;


 int ENOMEM ;
 int GFP_NOFS ;
 int get_unaligned_le64 (int *) ;
 int * kcalloc (size_t,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int dup_array(u64 **dst, __le64 *src, u32 num)
{
 u32 i;

 kfree(*dst);
 if (num) {
  *dst = kcalloc(num, sizeof(u64), GFP_NOFS);
  if (!*dst)
   return -ENOMEM;
  for (i = 0; i < num; i++)
   (*dst)[i] = get_unaligned_le64(src + i);
 } else {
  *dst = ((void*)0);
 }
 return 0;
}
