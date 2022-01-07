
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qman_portal {int cgr_lock; int * cgrs; TYPE_1__* config; int cgr_cbs; } ;
struct qman_cgr {size_t cgrid; int (* cb ) (struct qman_portal*,struct qman_cgr*,int) ;int node; int chan; } ;
struct TYPE_4__ {scalar_t__ cscn_en; int cscn_targ; } ;
struct qm_mcr_querycgr {TYPE_2__ cgr; } ;
struct qm_mcc_initcgr {int we_mask; int cgr; } ;
struct TYPE_3__ {int dev; int channel; } ;


 size_t CGR_NUM ;
 int EINVAL ;
 int PORTAL_IDX (struct qman_portal*) ;
 int QMAN_CGR_FLAG_USE_INIT ;
 int QM_CGR_WE_CSCN_TARG ;
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int dev_err (int ,char*) ;
 struct qman_portal* get_affine_portal () ;
 int list_add (int *,int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_affine_portal () ;
 int qm_cgr_cscn_targ_set (int *,int ,int ) ;
 int qm_modify_cgr (struct qman_cgr*,int,struct qm_mcc_initcgr*) ;
 int * qman_cgr_cpus ;
 scalar_t__ qman_cgrs_get (int *,size_t) ;
 int qman_query_cgr (struct qman_cgr*,struct qm_mcr_querycgr*) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct qman_portal*,struct qman_cgr*,int) ;

int qman_create_cgr(struct qman_cgr *cgr, u32 flags,
      struct qm_mcc_initcgr *opts)
{
 struct qm_mcr_querycgr cgr_state;
 int ret;
 struct qman_portal *p;







 if (cgr->cgrid >= CGR_NUM)
  return -EINVAL;

 preempt_disable();
 p = get_affine_portal();
 qman_cgr_cpus[cgr->cgrid] = smp_processor_id();
 preempt_enable();

 cgr->chan = p->config->channel;
 spin_lock(&p->cgr_lock);

 if (opts) {
  struct qm_mcc_initcgr local_opts = *opts;

  ret = qman_query_cgr(cgr, &cgr_state);
  if (ret)
   goto out;

  qm_cgr_cscn_targ_set(&local_opts.cgr, PORTAL_IDX(p),
         be32_to_cpu(cgr_state.cgr.cscn_targ));
  local_opts.we_mask |= cpu_to_be16(QM_CGR_WE_CSCN_TARG);


  if (flags & QMAN_CGR_FLAG_USE_INIT)
   ret = qm_modify_cgr(cgr, QMAN_CGR_FLAG_USE_INIT,
         &local_opts);
  else
   ret = qm_modify_cgr(cgr, 0, &local_opts);
  if (ret)
   goto out;
 }

 list_add(&cgr->node, &p->cgr_cbs);


 ret = qman_query_cgr(cgr, &cgr_state);
 if (ret) {

  dev_err(p->config->dev, "CGR HW state partially modified\n");
  ret = 0;
  goto out;
 }
 if (cgr->cb && cgr_state.cgr.cscn_en &&
     qman_cgrs_get(&p->cgrs[1], cgr->cgrid))
  cgr->cb(p, cgr, 1);
out:
 spin_unlock(&p->cgr_lock);
 put_affine_portal();
 return ret;
}
