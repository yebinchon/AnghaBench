
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct adapter {int dummy; } ;


 int bMaskDWord ;
 int phy_set_bb_reg (struct adapter*,size_t,int ,size_t) ;

__attribute__((used)) static void reload_adda_reg(struct adapter *adapt, u32 *adda_reg,
       u32 *backup, u32 regiester_num)
{
 u32 i;

 for (i = 0; i < regiester_num; i++)
  phy_set_bb_reg(adapt, adda_reg[i], bMaskDWord, backup[i]);
}
