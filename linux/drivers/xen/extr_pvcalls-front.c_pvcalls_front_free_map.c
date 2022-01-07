
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ring; int ref; int irq; } ;
struct sock_mapping {TYPE_2__ active; int list; } ;
struct pvcalls_bedata {int socket_lock; } ;
struct TYPE_3__ {int * ref; } ;


 int PVCALLS_RING_ORDER ;
 int free_page (unsigned long) ;
 int gnttab_end_foreign_access (int ,int ,int ) ;
 int kfree (struct sock_mapping*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unbind_from_irqhandler (int ,struct sock_mapping*) ;

__attribute__((used)) static void pvcalls_front_free_map(struct pvcalls_bedata *bedata,
       struct sock_mapping *map)
{
 int i;

 unbind_from_irqhandler(map->active.irq, map);

 spin_lock(&bedata->socket_lock);
 if (!list_empty(&map->list))
  list_del_init(&map->list);
 spin_unlock(&bedata->socket_lock);

 for (i = 0; i < (1 << PVCALLS_RING_ORDER); i++)
  gnttab_end_foreign_access(map->active.ring->ref[i], 0, 0);
 gnttab_end_foreign_access(map->active.ref, 0, 0);
 free_page((unsigned long)map->active.ring);

 kfree(map);
}
