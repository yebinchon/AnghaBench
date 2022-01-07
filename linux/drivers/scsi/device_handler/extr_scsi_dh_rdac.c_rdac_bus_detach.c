
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct rdac_dh_data* handler_data; } ;
struct rdac_dh_data {TYPE_1__* ctlr; int * sdev; int node; } ;
struct TYPE_2__ {int kref; scalar_t__ ms_queued; } ;


 int flush_workqueue (int ) ;
 int kfree (struct rdac_dh_data*) ;
 int kmpath_rdacd ;
 int kref_put (int *,int ) ;
 int list_del_rcu (int *) ;
 int list_lock ;
 int release_controller ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rdac_bus_detach( struct scsi_device *sdev )
{
 struct rdac_dh_data *h = sdev->handler_data;

 if (h->ctlr && h->ctlr->ms_queued)
  flush_workqueue(kmpath_rdacd);

 spin_lock(&list_lock);
 if (h->ctlr) {
  list_del_rcu(&h->node);
  h->sdev = ((void*)0);
  kref_put(&h->ctlr->kref, release_controller);
 }
 spin_unlock(&list_lock);
 sdev->handler_data = ((void*)0);
 kfree(h);
}
