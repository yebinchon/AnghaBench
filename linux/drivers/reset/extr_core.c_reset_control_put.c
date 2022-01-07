
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct reset_control*) ;
 int __reset_control_put_internal (struct reset_control*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_control_array_put (int ) ;
 scalar_t__ reset_control_is_array (struct reset_control*) ;
 int reset_list_mutex ;
 int rstc_to_array (struct reset_control*) ;

void reset_control_put(struct reset_control *rstc)
{
 if (IS_ERR_OR_NULL(rstc))
  return;

 if (reset_control_is_array(rstc)) {
  reset_control_array_put(rstc_to_array(rstc));
  return;
 }

 mutex_lock(&reset_list_mutex);
 __reset_control_put_internal(rstc);
 mutex_unlock(&reset_list_mutex);
}
