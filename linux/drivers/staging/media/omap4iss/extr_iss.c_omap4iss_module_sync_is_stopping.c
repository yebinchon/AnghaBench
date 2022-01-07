
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
typedef int atomic_t ;


 scalar_t__ atomic_cmpxchg (int *,int,int ) ;
 int wake_up (int *) ;

int omap4iss_module_sync_is_stopping(wait_queue_head_t *wait,
         atomic_t *stopping)
{
 if (atomic_cmpxchg(stopping, 1, 0)) {
  wake_up(wait);
  return 1;
 }

 return 0;
}
