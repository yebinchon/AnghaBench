
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qbman_swp {int dummy; } ;
struct qbman_bp_query_rslt {int dummy; } ;
struct dpaa2_io {int lock_mgmt_cmd; struct qbman_swp* swp; } ;


 int ENODEV ;
 int qbman_bp_info_num_free_bufs (struct qbman_bp_query_rslt*) ;
 int qbman_bp_query (struct qbman_swp*,int ,struct qbman_bp_query_rslt*) ;
 struct dpaa2_io* service_select (struct dpaa2_io*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dpaa2_io_query_bp_count(struct dpaa2_io *d, u16 bpid, u32 *num)
{
 struct qbman_bp_query_rslt state;
 struct qbman_swp *swp;
 unsigned long irqflags;
 int ret;

 d = service_select(d);
 if (!d)
  return -ENODEV;

 swp = d->swp;
 spin_lock_irqsave(&d->lock_mgmt_cmd, irqflags);
 ret = qbman_bp_query(swp, bpid, &state);
 spin_unlock_irqrestore(&d->lock_mgmt_cmd, irqflags);
 if (ret)
  return ret;
 *num = qbman_bp_info_num_free_bufs(&state);
 return 0;
}
