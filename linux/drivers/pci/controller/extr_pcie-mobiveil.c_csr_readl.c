
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mobiveil_pcie {int dummy; } ;


 int csr_read (struct mobiveil_pcie*,int ,int) ;

__attribute__((used)) static u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
{
 return csr_read(pcie, off, 0x4);
}
