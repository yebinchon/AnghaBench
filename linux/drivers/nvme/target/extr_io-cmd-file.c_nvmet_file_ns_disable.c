
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int * file; int * bvec_cache; int * bvec_pool; scalar_t__ buffered_io; } ;


 int buffered_io_wq ;
 int flush_workqueue (int ) ;
 int fput (int *) ;
 int kmem_cache_destroy (int *) ;
 int mempool_destroy (int *) ;

void nvmet_file_ns_disable(struct nvmet_ns *ns)
{
 if (ns->file) {
  if (ns->buffered_io)
   flush_workqueue(buffered_io_wq);
  mempool_destroy(ns->bvec_pool);
  ns->bvec_pool = ((void*)0);
  kmem_cache_destroy(ns->bvec_cache);
  ns->bvec_cache = ((void*)0);
  fput(ns->file);
  ns->file = ((void*)0);
 }
}
