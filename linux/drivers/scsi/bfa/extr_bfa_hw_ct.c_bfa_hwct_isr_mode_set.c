
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int ioc; } ;
typedef int bfa_boolean_t ;


 int bfa_ioc_isr_mode_set (int *,int ) ;
 int bfa_trc (struct bfa_s*,int ) ;

void
bfa_hwct_isr_mode_set(struct bfa_s *bfa, bfa_boolean_t msix)
{
 bfa_trc(bfa, 0);
 bfa_ioc_isr_mode_set(&bfa->ioc, msix);
}
