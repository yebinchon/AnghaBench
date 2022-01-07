
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_writequeues () ;
 int con_cache ;
 int connections_lock ;
 scalar_t__ dlm_allow_conn ;
 int foreach_conn (int ) ;
 int free_conn ;
 int kmem_cache_destroy (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int work_flush () ;
 int work_stop () ;

void dlm_lowcomms_stop(void)
{



 mutex_lock(&connections_lock);
 dlm_allow_conn = 0;
 mutex_unlock(&connections_lock);
 work_flush();
 clean_writequeues();
 foreach_conn(free_conn);
 work_stop();

 kmem_cache_destroy(con_cache);
}
