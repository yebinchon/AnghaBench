
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vl_cursor {unsigned long untried; int index; TYPE_1__* server_list; int error; struct afs_cell* cell; } ;
struct afs_cell {scalar_t__ dns_source; scalar_t__ dns_expiry; int vl_servers_lock; int vl_servers; int dns_lookup_count; int manager; int flags; } ;
struct TYPE_2__ {unsigned long nr_servers; } ;


 int AFS_CELL_FL_DO_LOOKUP ;
 scalar_t__ DNS_RECORD_UNAVAILABLE ;
 int EDESTADDRREQ ;
 int ERESTARTSYS ;
 TYPE_1__* afs_get_vlserverlist (int ) ;
 int afs_wq ;
 scalar_t__ ktime_get_real_seconds () ;
 int lockdep_is_held (int *) ;
 int queue_work (int ,int *) ;
 int rcu_dereference_protected (int ,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_bit (int ,int *) ;
 unsigned int smp_load_acquire (int *) ;
 scalar_t__ wait_var_event_interruptible (int *,int) ;

__attribute__((used)) static bool afs_start_vl_iteration(struct afs_vl_cursor *vc)
{
 struct afs_cell *cell = vc->cell;
 unsigned int dns_lookup_count;

 if (cell->dns_source == DNS_RECORD_UNAVAILABLE ||
     cell->dns_expiry <= ktime_get_real_seconds()) {
  dns_lookup_count = smp_load_acquire(&cell->dns_lookup_count);
  set_bit(AFS_CELL_FL_DO_LOOKUP, &cell->flags);
  queue_work(afs_wq, &cell->manager);

  if (cell->dns_source == DNS_RECORD_UNAVAILABLE) {
   if (wait_var_event_interruptible(
        &cell->dns_lookup_count,
        smp_load_acquire(&cell->dns_lookup_count)
        != dns_lookup_count) < 0) {
    vc->error = -ERESTARTSYS;
    return 0;
   }
  }


  if (cell->dns_source == DNS_RECORD_UNAVAILABLE) {
   vc->error = -EDESTADDRREQ;
   return 0;
  }
 }

 read_lock(&cell->vl_servers_lock);
 vc->server_list = afs_get_vlserverlist(
  rcu_dereference_protected(cell->vl_servers,
       lockdep_is_held(&cell->vl_servers_lock)));
 read_unlock(&cell->vl_servers_lock);
 if (!vc->server_list->nr_servers)
  return 0;

 vc->untried = (1UL << vc->server_list->nr_servers) - 1;
 vc->index = -1;
 return 1;
}
