
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mobiveil_pcie {int dummy; } ;


 int csr_write (struct mobiveil_pcie*,int ,int ,int) ;

__attribute__((used)) static void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
{
 csr_write(pcie, val, off, 0x4);
}
