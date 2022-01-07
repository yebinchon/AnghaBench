
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t cpu; } ;
struct dpaa2_io {int node; TYPE_1__ dpio_desc; } ;


 int ** dpio_by_cpu ;
 int dpio_list_lock ;
 int kfree (struct dpaa2_io*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dpaa2_io_down(struct dpaa2_io *d)
{
 spin_lock(&dpio_list_lock);
 dpio_by_cpu[d->dpio_desc.cpu] = ((void*)0);
 list_del(&d->node);
 spin_unlock(&dpio_list_lock);

 kfree(d);
}
