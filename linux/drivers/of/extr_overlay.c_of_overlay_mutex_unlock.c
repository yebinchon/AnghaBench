
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int of_overlay_phandle_mutex ;

void of_overlay_mutex_unlock(void)
{
 mutex_unlock(&of_overlay_phandle_mutex);
}
