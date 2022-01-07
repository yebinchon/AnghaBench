
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control_array {int num_rstcs; int * rstc; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int reset_control_array_deassert(struct reset_control_array *resets)
{
 int ret, i;

 for (i = 0; i < resets->num_rstcs; i++) {
  ret = reset_control_deassert(resets->rstc[i]);
  if (ret)
   goto err;
 }

 return 0;

err:
 while (i--)
  reset_control_assert(resets->rstc[i]);
 return ret;
}
