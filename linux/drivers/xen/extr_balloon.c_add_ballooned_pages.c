
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bp_state { ____Placeholder_bp_state } bp_state ;


 int BP_DONE ;
 int BP_ECANCELED ;
 int ENOMEM ;
 int GFP_USER ;
 int balloon_mutex ;
 int balloon_wq ;
 int ballooned_pages ;
 int decrease_reservation (int,int ) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reserve_additional_memory () ;
 int si_mem_available () ;
 int wait_event (int ,int) ;
 scalar_t__ xen_hotplug_unpopulated ;

__attribute__((used)) static int add_ballooned_pages(int nr_pages)
{
 enum bp_state st;

 if (xen_hotplug_unpopulated) {
  st = reserve_additional_memory();
  if (st != BP_ECANCELED) {
   mutex_unlock(&balloon_mutex);
   wait_event(balloon_wq,
       !list_empty(&ballooned_pages));
   mutex_lock(&balloon_mutex);
   return 0;
  }
 }

 if (si_mem_available() < nr_pages)
  return -ENOMEM;

 st = decrease_reservation(nr_pages, GFP_USER);
 if (st != BP_DONE)
  return -ENOMEM;

 return 0;
}
