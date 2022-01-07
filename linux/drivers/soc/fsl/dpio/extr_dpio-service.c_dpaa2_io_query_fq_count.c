
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_swp {int dummy; } ;
struct qbman_fq_query_np_rslt {int dummy; } ;
struct dpaa2_io {int lock_mgmt_cmd; struct qbman_swp* swp; } ;


 int ENODEV ;
 int qbman_fq_query_state (struct qbman_swp*,int ,struct qbman_fq_query_np_rslt*) ;
 int qbman_fq_state_byte_count (struct qbman_fq_query_np_rslt*) ;
 int qbman_fq_state_frame_count (struct qbman_fq_query_np_rslt*) ;
 struct dpaa2_io* service_select (struct dpaa2_io*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dpaa2_io_query_fq_count(struct dpaa2_io *d, u32 fqid,
       u32 *fcnt, u32 *bcnt)
{
 struct qbman_fq_query_np_rslt state;
 struct qbman_swp *swp;
 unsigned long irqflags;
 int ret;

 d = service_select(d);
 if (!d)
  return -ENODEV;

 swp = d->swp;
 spin_lock_irqsave(&d->lock_mgmt_cmd, irqflags);
 ret = qbman_fq_query_state(swp, fqid, &state);
 spin_unlock_irqrestore(&d->lock_mgmt_cmd, irqflags);
 if (ret)
  return ret;
 *fcnt = qbman_fq_state_frame_count(&state);
 *bcnt = qbman_fq_state_byte_count(&state);

 return 0;
}
