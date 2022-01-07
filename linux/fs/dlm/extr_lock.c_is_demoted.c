
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {int lkb_sbflags; } ;


 int DLM_SBF_DEMOTED ;

__attribute__((used)) static inline int is_demoted(struct dlm_lkb *lkb)
{
 return (lkb->lkb_sbflags & DLM_SBF_DEMOTED);
}
