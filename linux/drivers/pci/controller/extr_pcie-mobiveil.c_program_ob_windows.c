
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mobiveil_pcie {int apio_wins; int ob_wins_configured; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int AXI_WINDOW_ALIGN_MASK ;
 int PAB_AXI_AMAP_AXI_WIN (int) ;
 int PAB_AXI_AMAP_CTRL (int) ;
 int PAB_AXI_AMAP_PEX_WIN_H (int) ;
 int PAB_AXI_AMAP_PEX_WIN_L (int) ;
 int PAB_EXT_AXI_AMAP_AXI_WIN (int) ;
 int PAB_EXT_AXI_AMAP_SIZE (int) ;
 int WIN_ENABLE_SHIFT ;
 int WIN_SIZE_MASK ;
 int WIN_TYPE_MASK ;
 int WIN_TYPE_SHIFT ;
 int csr_readl (struct mobiveil_pcie*,int ) ;
 int csr_writel (struct mobiveil_pcie*,int,int ) ;
 int dev_err (int *,char*) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
          u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
{
 u32 value;
 u64 size64 = ~(size - 1);

 if (win_num >= pcie->apio_wins) {
  dev_err(&pcie->pdev->dev,
   "ERROR: max outbound windows reached !\n");
  return;
 }





 value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
 value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT | WIN_SIZE_MASK);
 value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
   (lower_32_bits(size64) & WIN_SIZE_MASK);
 csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));

 csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));





 csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
     PAB_AXI_AMAP_AXI_WIN(win_num));
 csr_writel(pcie, upper_32_bits(cpu_addr),
     PAB_EXT_AXI_AMAP_AXI_WIN(win_num));

 csr_writel(pcie, lower_32_bits(pci_addr),
     PAB_AXI_AMAP_PEX_WIN_L(win_num));
 csr_writel(pcie, upper_32_bits(pci_addr),
     PAB_AXI_AMAP_PEX_WIN_H(win_num));

 pcie->ob_wins_configured++;
}
