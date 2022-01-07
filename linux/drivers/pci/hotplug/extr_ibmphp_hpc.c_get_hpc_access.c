
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int sem_hpcaccess ;

__attribute__((used)) static void get_hpc_access(void)
{
 mutex_lock(&sem_hpcaccess);
}
