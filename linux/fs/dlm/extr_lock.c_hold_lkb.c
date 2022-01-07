
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {int lkb_ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void hold_lkb(struct dlm_lkb *lkb)
{
 kref_get(&lkb->lkb_ref);
}
