
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_hba {scalar_t__ mmio_base; } ;


 int SS_H2I_INT_RESET ;
 scalar_t__ YH2I_INT ;
 int ssleep (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void stex_p3_reset(struct st_hba *hba)
{
 writel(SS_H2I_INT_RESET, hba->mmio_base + YH2I_INT);
 ssleep(5);
}
