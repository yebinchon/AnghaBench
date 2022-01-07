
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {scalar_t__ lkb_rqmode; scalar_t__ lkb_grmode; } ;


 int middle_conversion (struct dlm_lkb*) ;

__attribute__((used)) static inline int down_conversion(struct dlm_lkb *lkb)
{
 return (!middle_conversion(lkb) && lkb->lkb_rqmode < lkb->lkb_grmode);
}
