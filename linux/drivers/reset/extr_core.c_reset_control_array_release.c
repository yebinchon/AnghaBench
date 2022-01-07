
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control_array {unsigned int num_rstcs; int * rstc; } ;


 int reset_control_release (int ) ;

__attribute__((used)) static void reset_control_array_release(struct reset_control_array *resets)
{
 unsigned int i;

 for (i = 0; i < resets->num_rstcs; i++)
  reset_control_release(resets->rstc[i]);
}
