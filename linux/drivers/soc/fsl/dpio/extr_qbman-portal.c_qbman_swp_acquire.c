
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct qbman_swp {int dummy; } ;
struct qbman_acquire_rslt {int verb; scalar_t__ rslt; unsigned int num; int * buf; } ;
struct qbman_acquire_desc {unsigned int num; int bpid; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int QBMAN_MC_ACQUIRE ;
 scalar_t__ QBMAN_MC_RSLT_OK ;
 int WARN_ON (int) ;
 int cpu_to_le16 (int ) ;
 int le64_to_cpu (int ) ;
 int pr_err (char*,int ,...) ;
 struct qbman_acquire_rslt* qbman_swp_mc_complete (struct qbman_swp*,struct qbman_acquire_desc*,int) ;
 struct qbman_acquire_desc* qbman_swp_mc_start (struct qbman_swp*) ;
 scalar_t__ unlikely (int) ;

int qbman_swp_acquire(struct qbman_swp *s, u16 bpid, u64 *buffers,
        unsigned int num_buffers)
{
 struct qbman_acquire_desc *p;
 struct qbman_acquire_rslt *r;
 int i;

 if (!num_buffers || (num_buffers > 7))
  return -EINVAL;


 p = qbman_swp_mc_start(s);

 if (!p)
  return -EBUSY;


 p->bpid = cpu_to_le16(bpid);
 p->num = num_buffers;


 r = qbman_swp_mc_complete(s, p, QBMAN_MC_ACQUIRE);
 if (unlikely(!r)) {
  pr_err("qbman: acquire from BPID %d failed, no response\n",
         bpid);
  return -EIO;
 }


 WARN_ON((r->verb & 0x7f) != QBMAN_MC_ACQUIRE);


 if (unlikely(r->rslt != QBMAN_MC_RSLT_OK)) {
  pr_err("qbman: acquire from BPID 0x%x failed, code=0x%02x\n",
         bpid, r->rslt);
  return -EIO;
 }

 WARN_ON(r->num > num_buffers);


 for (i = 0; i < r->num; i++)
  buffers[i] = le64_to_cpu(r->buf[i]);

 return (int)r->num;
}
