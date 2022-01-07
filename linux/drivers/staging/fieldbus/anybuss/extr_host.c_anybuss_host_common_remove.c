
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct anybuss_host {int qcache; int qthread; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int device_unregister (int *) ;
 int kmem_cache_destroy (int ) ;
 int kthread_stop (int ) ;
 int reset_assert (struct anybuss_host*) ;

void anybuss_host_common_remove(struct anybuss_host *host)
{
 struct anybuss_host *cd = host;

 device_unregister(&cd->client->dev);
 kthread_stop(cd->qthread);
 reset_assert(cd);
 kmem_cache_destroy(cd->qcache);
}
