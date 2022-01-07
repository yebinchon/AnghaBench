
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct snic_req_info {int dummy; } ;
struct snic_max_sgl {int dummy; } ;
struct snic_host_req {int dummy; } ;
struct snic_dflt_sgl {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct kmem_cache** req_cache; int event_q; int snic_list_lock; int snic_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SLAB_HWCACHE_ALIGN ;
 int SNIC_ERR (char*) ;
 size_t SNIC_REQ_CACHE_DFLT_SGL ;
 size_t SNIC_REQ_CACHE_MAX_SGL ;
 size_t SNIC_REQ_TM_CACHE ;
 int SNIC_SG_DESC_ALIGN ;
 int create_singlethread_workqueue (char*) ;
 int kfree (TYPE_1__*) ;
 struct kmem_cache* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (struct kmem_cache*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int snic_debugfs_init () ;
 int snic_debugfs_term () ;
 TYPE_1__* snic_glob ;
 int snic_trc_free () ;
 int snic_trc_init () ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
snic_global_data_init(void)
{
 int ret = 0;
 struct kmem_cache *cachep;
 ssize_t len = 0;

 snic_glob = kzalloc(sizeof(*snic_glob), GFP_KERNEL);

 if (!snic_glob) {
  SNIC_ERR("Failed to allocate Global Context.\n");

  ret = -ENOMEM;
  goto gdi_end;
 }
 INIT_LIST_HEAD(&snic_glob->snic_list);
 spin_lock_init(&snic_glob->snic_list_lock);


 len = sizeof(struct snic_req_info);
 len += sizeof(struct snic_host_req) + sizeof(struct snic_dflt_sgl);
 cachep = kmem_cache_create("snic_req_dfltsgl", len, SNIC_SG_DESC_ALIGN,
       SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!cachep) {
  SNIC_ERR("Failed to create snic default sgl slab\n");
  ret = -ENOMEM;

  goto err_dflt_req_slab;
 }
 snic_glob->req_cache[SNIC_REQ_CACHE_DFLT_SGL] = cachep;


 len = sizeof(struct snic_req_info);
 len += sizeof(struct snic_host_req) + sizeof(struct snic_max_sgl);
 cachep = kmem_cache_create("snic_req_maxsgl", len, SNIC_SG_DESC_ALIGN,
       SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!cachep) {
  SNIC_ERR("Failed to create snic max sgl slab\n");
  ret = -ENOMEM;

  goto err_max_req_slab;
 }
 snic_glob->req_cache[SNIC_REQ_CACHE_MAX_SGL] = cachep;

 len = sizeof(struct snic_host_req);
 cachep = kmem_cache_create("snic_req_maxsgl", len, SNIC_SG_DESC_ALIGN,
       SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!cachep) {
  SNIC_ERR("Failed to create snic tm req slab\n");
  ret = -ENOMEM;

  goto err_tmreq_slab;
 }
 snic_glob->req_cache[SNIC_REQ_TM_CACHE] = cachep;


 snic_glob->event_q = create_singlethread_workqueue("snic_event_wq");
 if (!snic_glob->event_q) {
  SNIC_ERR("snic event queue create failed\n");
  ret = -ENOMEM;

  goto err_eventq;
 }

 return ret;

err_eventq:
 kmem_cache_destroy(snic_glob->req_cache[SNIC_REQ_TM_CACHE]);

err_tmreq_slab:
 kmem_cache_destroy(snic_glob->req_cache[SNIC_REQ_CACHE_MAX_SGL]);

err_max_req_slab:
 kmem_cache_destroy(snic_glob->req_cache[SNIC_REQ_CACHE_DFLT_SGL]);

err_dflt_req_slab:




 kfree(snic_glob);
 snic_glob = ((void*)0);

gdi_end:
 return ret;
}
