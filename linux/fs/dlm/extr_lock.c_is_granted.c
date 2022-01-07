
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {scalar_t__ lkb_status; } ;


 scalar_t__ DLM_LKSTS_GRANTED ;

__attribute__((used)) static inline int is_granted(struct dlm_lkb *lkb)
{
 return (lkb->lkb_status == DLM_LKSTS_GRANTED);
}
