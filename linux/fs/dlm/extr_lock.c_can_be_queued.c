
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {int lkb_exflags; } ;


 int DLM_LKF_NOQUEUE ;

__attribute__((used)) static inline int can_be_queued(struct dlm_lkb *lkb)
{
 return !(lkb->lkb_exflags & DLM_LKF_NOQUEUE);
}
