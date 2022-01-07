
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buses_mutex ;
 int mutex_unlock (int *) ;
 int ssb_is_early_boot ;

__attribute__((used)) static void ssb_buses_unlock(void)
{

 if (!ssb_is_early_boot)
  mutex_unlock(&buses_mutex);
}
