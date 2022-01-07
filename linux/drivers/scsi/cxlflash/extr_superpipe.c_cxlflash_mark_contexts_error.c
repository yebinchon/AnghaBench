
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxlflash_cfg {int ctx_tbl_list_mutex; int ctx_err_recovery; struct ctx_info** ctx_tbl; } ;
struct ctx_info {int err_recovery_active; int mutex; int * ctrl_map; int list; } ;


 int MAX_CONTEXT ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unmap_context (struct ctx_info*) ;

int cxlflash_mark_contexts_error(struct cxlflash_cfg *cfg)
{
 int i, rc = 0;
 struct ctx_info *ctxi = ((void*)0);

 mutex_lock(&cfg->ctx_tbl_list_mutex);

 for (i = 0; i < MAX_CONTEXT; i++) {
  ctxi = cfg->ctx_tbl[i];
  if (ctxi) {
   mutex_lock(&ctxi->mutex);
   cfg->ctx_tbl[i] = ((void*)0);
   list_add(&ctxi->list, &cfg->ctx_err_recovery);
   ctxi->err_recovery_active = 1;
   ctxi->ctrl_map = ((void*)0);
   unmap_context(ctxi);
   mutex_unlock(&ctxi->mutex);
  }
 }

 mutex_unlock(&cfg->ctx_tbl_list_mutex);
 return rc;
}
