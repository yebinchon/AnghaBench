
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_group {int num_tcs; int offset; int drv; } ;


 int EBUSY ;
 scalar_t__ tcs_is_free (int ,int) ;

__attribute__((used)) static int find_free_tcs(struct tcs_group *tcs)
{
 int i;

 for (i = 0; i < tcs->num_tcs; i++) {
  if (tcs_is_free(tcs->drv, tcs->offset + i))
   return tcs->offset + i;
 }

 return -EBUSY;
}
