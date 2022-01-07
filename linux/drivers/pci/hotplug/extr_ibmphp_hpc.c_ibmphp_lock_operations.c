
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int operations_mutex ;
 int to_debug ;

void ibmphp_lock_operations(void)
{
 mutex_lock(&operations_mutex);
 to_debug = 1;
}
