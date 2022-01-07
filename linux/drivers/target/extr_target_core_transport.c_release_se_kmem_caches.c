
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int kmem_cache_destroy (int ) ;
 int se_sess_cache ;
 int se_ua_cache ;
 int t10_alua_lba_map_cache ;
 int t10_alua_lba_map_mem_cache ;
 int t10_alua_lu_gp_cache ;
 int t10_alua_lu_gp_mem_cache ;
 int t10_alua_tg_pt_gp_cache ;
 int t10_pr_reg_cache ;
 int target_completion_wq ;

void release_se_kmem_caches(void)
{
 destroy_workqueue(target_completion_wq);
 kmem_cache_destroy(se_sess_cache);
 kmem_cache_destroy(se_ua_cache);
 kmem_cache_destroy(t10_pr_reg_cache);
 kmem_cache_destroy(t10_alua_lu_gp_cache);
 kmem_cache_destroy(t10_alua_lu_gp_mem_cache);
 kmem_cache_destroy(t10_alua_tg_pt_gp_cache);
 kmem_cache_destroy(t10_alua_lba_map_cache);
 kmem_cache_destroy(t10_alua_lba_map_mem_cache);
}
