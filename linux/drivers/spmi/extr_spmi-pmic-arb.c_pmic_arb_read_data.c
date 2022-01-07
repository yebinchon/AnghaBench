
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct spmi_pmic_arb {scalar_t__ rd_base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;
 int memcpy (int*,scalar_t__*,int) ;

__attribute__((used)) static void
pmic_arb_read_data(struct spmi_pmic_arb *pmic_arb, u8 *buf, u32 reg, u8 bc)
{
 u32 data = __raw_readl(pmic_arb->rd_base + reg);

 memcpy(buf, &data, (bc & 3) + 1);
}
