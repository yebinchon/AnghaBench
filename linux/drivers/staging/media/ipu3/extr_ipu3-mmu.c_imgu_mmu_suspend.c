
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {int dummy; } ;


 int imgu_mmu_set_halt (struct imgu_mmu*,int) ;
 struct imgu_mmu* to_imgu_mmu (struct imgu_mmu_info*) ;

void imgu_mmu_suspend(struct imgu_mmu_info *info)
{
 struct imgu_mmu *mmu = to_imgu_mmu(info);

 imgu_mmu_set_halt(mmu, 1);
}
