
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_coupler {int list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_coupler_list ;
 int regulator_list_mutex ;

int regulator_coupler_register(struct regulator_coupler *coupler)
{
 mutex_lock(&regulator_list_mutex);
 list_add_tail(&coupler->list, &regulator_coupler_list);
 mutex_unlock(&regulator_list_mutex);

 return 0;
}
