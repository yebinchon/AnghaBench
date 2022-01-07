
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control_array {unsigned int num_rstcs; int * rstc; } ;


 int reset_control_acquire (int ) ;
 int reset_control_release (int ) ;

__attribute__((used)) static int reset_control_array_acquire(struct reset_control_array *resets)
{
 unsigned int i;
 int err;

 for (i = 0; i < resets->num_rstcs; i++) {
  err = reset_control_acquire(resets->rstc[i]);
  if (err < 0)
   goto release;
 }

 return 0;

release:
 while (i--)
  reset_control_release(resets->rstc[i]);

 return err;
}
