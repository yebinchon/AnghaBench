
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_ioc_s {TYPE_1__* ioc_hwif; } ;
struct TYPE_3__ {int * ioc_isr_mode_set; int ioc_lpu_read_stat; int ioc_map_port; int ioc_reg_init; int ioc_pll_init; } ;


 int bfa_ioc_ct2_lpu_read_stat ;
 int bfa_ioc_ct2_map_port ;
 int bfa_ioc_ct2_pll_init ;
 int bfa_ioc_ct2_reg_init ;
 int bfa_ioc_set_ctx_hwif (struct bfa_ioc_s*,TYPE_1__*) ;
 TYPE_1__ hwif_ct2 ;

void
bfa_ioc_set_ct2_hwif(struct bfa_ioc_s *ioc)
{
 bfa_ioc_set_ctx_hwif(ioc, &hwif_ct2);

 hwif_ct2.ioc_pll_init = bfa_ioc_ct2_pll_init;
 hwif_ct2.ioc_reg_init = bfa_ioc_ct2_reg_init;
 hwif_ct2.ioc_map_port = bfa_ioc_ct2_map_port;
 hwif_ct2.ioc_lpu_read_stat = bfa_ioc_ct2_lpu_read_stat;
 hwif_ct2.ioc_isr_mode_set = ((void*)0);
 ioc->ioc_hwif = &hwif_ct2;
}
