
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {int lkb_flags; } ;


 int DLM_IFL_OVERLAP_CANCEL ;
 int DLM_IFL_OVERLAP_UNLOCK ;

__attribute__((used)) static inline int is_overlap(struct dlm_lkb *lkb)
{
 return (lkb->lkb_flags & (DLM_IFL_OVERLAP_UNLOCK |
      DLM_IFL_OVERLAP_CANCEL));
}
