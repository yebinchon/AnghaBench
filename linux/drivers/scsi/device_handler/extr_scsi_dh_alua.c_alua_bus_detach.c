
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_port_group {int kref; int lock; } ;
struct alua_dh_data {int node; int pg_lock; int * sdev; int pg; } ;


 int kfree (struct alua_dh_data*) ;
 int kref_put (int *,int ) ;
 int list_del_rcu (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct alua_port_group* rcu_dereference_protected (int ,int ) ;
 int release_port_group ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void alua_bus_detach(struct scsi_device *sdev)
{
 struct alua_dh_data *h = sdev->handler_data;
 struct alua_port_group *pg;

 spin_lock(&h->pg_lock);
 pg = rcu_dereference_protected(h->pg, lockdep_is_held(&h->pg_lock));
 rcu_assign_pointer(h->pg, ((void*)0));
 h->sdev = ((void*)0);
 spin_unlock(&h->pg_lock);
 if (pg) {
  spin_lock_irq(&pg->lock);
  list_del_rcu(&h->node);
  spin_unlock_irq(&pg->lock);
  kref_put(&pg->kref, release_port_group);
 }
 sdev->handler_data = ((void*)0);
 kfree(h);
}
