
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short ppr_able; } ;
typedef int AdvPortAddr ;
typedef TYPE_1__ ADV_DVC_VAR ;


 int ASC_MC_PPR_ABLE ;
 int AdvReadWordLram (int ,int ,unsigned short) ;
 int AdvWriteWordLram (int ,int ,unsigned short) ;

__attribute__((used)) static void advansys_wide_enable_ppr(ADV_DVC_VAR *adv_dvc,
    AdvPortAddr iop_base, unsigned short tidmask)
{
 AdvReadWordLram(iop_base, ASC_MC_PPR_ABLE, adv_dvc->ppr_able);
 adv_dvc->ppr_able |= tidmask;
 AdvWriteWordLram(iop_base, ASC_MC_PPR_ABLE, adv_dvc->ppr_able);
}
