
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;


 int _regulator_put (struct regulator*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_list_mutex ;

void regulator_put(struct regulator *regulator)
{
 mutex_lock(&regulator_list_mutex);
 _regulator_put(regulator);
 mutex_unlock(&regulator_list_mutex);
}
