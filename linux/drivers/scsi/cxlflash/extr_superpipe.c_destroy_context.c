
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct cxlflash_cfg {struct afu* afu; } ;
struct ctx_info {struct ctx_info* rht_lun; struct ctx_info* rht_needs_ws; scalar_t__ rht_start; TYPE_1__* ctrl_map; int luns; scalar_t__ initialized; } ;
struct afu {scalar_t__ afu_map; } ;
struct TYPE_2__ {int ctx_cap; int rht_cnt_id; int rht_start; } ;


 int WARN_ON (int) ;
 int free_page (int ) ;
 int kfree (struct ctx_info*) ;
 int list_empty (int *) ;
 int writeq_be (int ,int *) ;

__attribute__((used)) static void destroy_context(struct cxlflash_cfg *cfg,
       struct ctx_info *ctxi)
{
 struct afu *afu = cfg->afu;

 if (ctxi->initialized) {
  WARN_ON(!list_empty(&ctxi->luns));


  if (afu->afu_map && ctxi->ctrl_map) {
   writeq_be(0, &ctxi->ctrl_map->rht_start);
   writeq_be(0, &ctxi->ctrl_map->rht_cnt_id);
   writeq_be(0, &ctxi->ctrl_map->ctx_cap);
  }
 }


 free_page((ulong)ctxi->rht_start);
 kfree(ctxi->rht_needs_ws);
 kfree(ctxi->rht_lun);
 kfree(ctxi);
}
