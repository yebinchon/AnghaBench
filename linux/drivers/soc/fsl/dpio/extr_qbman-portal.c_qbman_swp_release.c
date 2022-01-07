
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct qbman_swp {TYPE_1__* desc; } ;
struct qbman_release_desc {unsigned int verb; int bpid; int * buf; } ;
struct TYPE_2__ {int qman_version; } ;


 int EBUSY ;
 int EINVAL ;
 int QBMAN_CENA_SWP_RCR (int) ;
 int QBMAN_CENA_SWP_RCR_MEM (int) ;
 int QBMAN_CINH_SWP_RAR ;
 scalar_t__ QBMAN_CINH_SWP_RCR_AM_RT ;
 int QMAN_REV_5000 ;
 int QMAN_REV_MASK ;
 int QMAN_RT_MODE ;
 int RAR_IDX (int ) ;
 int RAR_SUCCESS (int ) ;
 unsigned int RAR_VB (int ) ;
 int cpu_to_le64 (int const) ;
 int dma_wmb () ;
 struct qbman_release_desc* qbman_get_cmd (struct qbman_swp*,int ) ;
 int qbman_read_register (struct qbman_swp*,int ) ;
 int qbman_write_register (struct qbman_swp*,scalar_t__,int ) ;

int qbman_swp_release(struct qbman_swp *s, const struct qbman_release_desc *d,
        const u64 *buffers, unsigned int num_buffers)
{
 int i;
 struct qbman_release_desc *p;
 u32 rar;

 if (!num_buffers || (num_buffers > 7))
  return -EINVAL;

 rar = qbman_read_register(s, QBMAN_CINH_SWP_RAR);
 if (!RAR_SUCCESS(rar))
  return -EBUSY;


 if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
  p = qbman_get_cmd(s, QBMAN_CENA_SWP_RCR(RAR_IDX(rar)));
 else
  p = qbman_get_cmd(s, QBMAN_CENA_SWP_RCR_MEM(RAR_IDX(rar)));

 for (i = 0; i < num_buffers; i++)
  p->buf[i] = cpu_to_le64(buffers[i]);
 p->bpid = d->bpid;

 if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {




  dma_wmb();
  p->verb = d->verb | RAR_VB(rar) | num_buffers;
 } else {
  p->verb = d->verb | RAR_VB(rar) | num_buffers;
  dma_wmb();
  qbman_write_register(s, QBMAN_CINH_SWP_RCR_AM_RT +
         RAR_IDX(rar) * 4, QMAN_RT_MODE);
 }

 return 0;
}
