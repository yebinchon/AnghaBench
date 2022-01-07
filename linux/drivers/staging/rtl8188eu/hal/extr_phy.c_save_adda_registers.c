
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct adapter {int dummy; } ;


 int bMaskDWord ;
 size_t phy_query_bb_reg (struct adapter*,size_t,int ) ;

__attribute__((used)) static void save_adda_registers(struct adapter *adapt, u32 *addareg,
    u32 *backup, u32 register_num)
{
 u32 i;

 for (i = 0; i < register_num; i++)
  backup[i] = phy_query_bb_reg(adapt, addareg[i], bMaskDWord);
}
