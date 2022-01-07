
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_lookup {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_lookup_lock ;

void pwm_remove_table(struct pwm_lookup *table, size_t num)
{
 mutex_lock(&pwm_lookup_lock);

 while (num--) {
  list_del(&table->list);
  table++;
 }

 mutex_unlock(&pwm_lookup_lock);
}
