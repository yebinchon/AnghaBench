
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;


 int QMAN_VOLATILE_FLAG_WAIT_INT ;
 int affine_queue ;
 int set_vdqcr (struct qman_portal**,struct qman_fq*,int) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int wait_vdqcr_start(struct qman_portal **p, struct qman_fq *fq,
    u32 vdqcr, u32 flags)
{
 int ret = 0;

 if (flags & QMAN_VOLATILE_FLAG_WAIT_INT)
  ret = wait_event_interruptible(affine_queue,
    !set_vdqcr(p, fq, vdqcr));
 else
  wait_event(affine_queue, !set_vdqcr(p, fq, vdqcr));
 return ret;
}
