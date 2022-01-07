
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvebu_pcie_port {int dummy; } ;
struct mbus_dram_window {int base; int size; int mbus_attr; } ;
struct mbus_dram_target_info {int num_cs; int mbus_dram_target_id; struct mbus_dram_window* cs; } ;


 int PCIE_BAR_CTRL_OFF (int) ;
 int PCIE_BAR_HI_OFF (int) ;
 int PCIE_BAR_LO_OFF (int) ;
 int PCIE_WIN04_BASE_OFF (int) ;
 int PCIE_WIN04_CTRL_OFF (int) ;
 int PCIE_WIN04_REMAP_OFF (int) ;
 int PCIE_WIN5_BASE_OFF ;
 int PCIE_WIN5_CTRL_OFF ;
 int PCIE_WIN5_REMAP_OFF ;
 int fls (int) ;
 struct mbus_dram_target_info* mv_mbus_dram_info () ;
 int mvebu_writel (struct mvebu_pcie_port*,int,int ) ;

__attribute__((used)) static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
{
 const struct mbus_dram_target_info *dram;
 u32 size;
 int i;

 dram = mv_mbus_dram_info();


 for (i = 1; i < 3; i++) {
  mvebu_writel(port, 0, PCIE_BAR_CTRL_OFF(i));
  mvebu_writel(port, 0, PCIE_BAR_LO_OFF(i));
  mvebu_writel(port, 0, PCIE_BAR_HI_OFF(i));
 }

 for (i = 0; i < 5; i++) {
  mvebu_writel(port, 0, PCIE_WIN04_CTRL_OFF(i));
  mvebu_writel(port, 0, PCIE_WIN04_BASE_OFF(i));
  mvebu_writel(port, 0, PCIE_WIN04_REMAP_OFF(i));
 }

 mvebu_writel(port, 0, PCIE_WIN5_CTRL_OFF);
 mvebu_writel(port, 0, PCIE_WIN5_BASE_OFF);
 mvebu_writel(port, 0, PCIE_WIN5_REMAP_OFF);


 size = 0;
 for (i = 0; i < dram->num_cs; i++) {
  const struct mbus_dram_window *cs = dram->cs + i;

  mvebu_writel(port, cs->base & 0xffff0000,
        PCIE_WIN04_BASE_OFF(i));
  mvebu_writel(port, 0, PCIE_WIN04_REMAP_OFF(i));
  mvebu_writel(port,
        ((cs->size - 1) & 0xffff0000) |
        (cs->mbus_attr << 8) |
        (dram->mbus_dram_target_id << 4) | 1,
        PCIE_WIN04_CTRL_OFF(i));

  size += cs->size;
 }


 if ((size & (size - 1)) != 0)
  size = 1 << fls(size);


 mvebu_writel(port, dram->cs[0].base, PCIE_BAR_LO_OFF(1));
 mvebu_writel(port, 0, PCIE_BAR_HI_OFF(1));
 mvebu_writel(port, ((size - 1) & 0xffff0000) | 1,
       PCIE_BAR_CTRL_OFF(1));
}
