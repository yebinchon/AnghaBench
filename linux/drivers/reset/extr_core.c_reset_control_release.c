
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int acquired; } ;


 int IS_ERR (struct reset_control*) ;
 scalar_t__ WARN_ON (int ) ;
 int reset_control_array_release (int ) ;
 scalar_t__ reset_control_is_array (struct reset_control*) ;
 int rstc_to_array (struct reset_control*) ;

void reset_control_release(struct reset_control *rstc)
{
 if (!rstc || WARN_ON(IS_ERR(rstc)))
  return;

 if (reset_control_is_array(rstc))
  reset_control_array_release(rstc_to_array(rstc));
 else
  rstc->acquired = 0;
}
