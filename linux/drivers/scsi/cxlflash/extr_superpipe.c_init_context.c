
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct file {int dummy; } ;
struct cxlflash_cfg {struct afu* afu; } ;
struct ctx_info {int initialized; int list; int luns; int kref; int mutex; struct file* file; struct cxlflash_cfg* cfg; void* ctx; int pid; int irqs; int ctxid; int * ctrl_map; int rht_perms; } ;
struct afu {TYPE_2__* afu_map; } ;
struct TYPE_4__ {TYPE_1__* ctrls; } ;
struct TYPE_3__ {int ctrl; } ;


 int ENCODE_CTXID (struct ctx_info*,int) ;
 int INIT_LIST_HEAD (int *) ;
 int current ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 int task_tgid_nr (int ) ;

__attribute__((used)) static void init_context(struct ctx_info *ctxi, struct cxlflash_cfg *cfg,
    void *ctx, int ctxid, struct file *file, u32 perms,
    u64 irqs)
{
 struct afu *afu = cfg->afu;

 ctxi->rht_perms = perms;
 ctxi->ctrl_map = &afu->afu_map->ctrls[ctxid].ctrl;
 ctxi->ctxid = ENCODE_CTXID(ctxi, ctxid);
 ctxi->irqs = irqs;
 ctxi->pid = task_tgid_nr(current);
 ctxi->ctx = ctx;
 ctxi->cfg = cfg;
 ctxi->file = file;
 ctxi->initialized = 1;
 mutex_init(&ctxi->mutex);
 kref_init(&ctxi->kref);
 INIT_LIST_HEAD(&ctxi->luns);
 INIT_LIST_HEAD(&ctxi->list);
}
