
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * req_cache; int event_q; } ;


 int SNIC_BUG_ON (int ) ;
 size_t SNIC_REQ_CACHE_DFLT_SGL ;
 size_t SNIC_REQ_CACHE_MAX_SGL ;
 size_t SNIC_REQ_TM_CACHE ;
 int destroy_workqueue (int ) ;
 int kfree (TYPE_1__*) ;
 int kmem_cache_destroy (int ) ;
 int snic_debugfs_term () ;
 TYPE_1__* snic_glob ;
 int snic_trc_free () ;

__attribute__((used)) static void
snic_global_data_cleanup(void)
{
 SNIC_BUG_ON(snic_glob == ((void*)0));

 destroy_workqueue(snic_glob->event_q);
 kmem_cache_destroy(snic_glob->req_cache[SNIC_REQ_TM_CACHE]);
 kmem_cache_destroy(snic_glob->req_cache[SNIC_REQ_CACHE_MAX_SGL]);
 kmem_cache_destroy(snic_glob->req_cache[SNIC_REQ_CACHE_DFLT_SGL]);
 kfree(snic_glob);
 snic_glob = ((void*)0);
}
