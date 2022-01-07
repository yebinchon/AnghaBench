
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control_array {int num_rstcs; int * rstc; } ;


 int __reset_control_put_internal (int ) ;
 int kfree (struct reset_control_array*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_list_mutex ;

__attribute__((used)) static void reset_control_array_put(struct reset_control_array *resets)
{
 int i;

 mutex_lock(&reset_list_mutex);
 for (i = 0; i < resets->num_rstcs; i++)
  __reset_control_put_internal(resets->rstc[i]);
 mutex_unlock(&reset_list_mutex);
 kfree(resets);
}
