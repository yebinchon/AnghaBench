
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pcie_window {scalar_t__ base; scalar_t__ remap; scalar_t__ size; } ;
struct mvebu_pcie_port {int dummy; } ;


 int mvebu_pcie_add_windows (struct mvebu_pcie_port*,unsigned int,unsigned int,scalar_t__,scalar_t__,scalar_t__) ;
 int mvebu_pcie_del_windows (struct mvebu_pcie_port*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void mvebu_pcie_set_window(struct mvebu_pcie_port *port,
      unsigned int target, unsigned int attribute,
      const struct mvebu_pcie_window *desired,
      struct mvebu_pcie_window *cur)
{
 if (desired->base == cur->base && desired->remap == cur->remap &&
     desired->size == cur->size)
  return;

 if (cur->size != 0) {
  mvebu_pcie_del_windows(port, cur->base, cur->size);
  cur->size = 0;
  cur->base = 0;






 }

 if (desired->size == 0)
  return;

 mvebu_pcie_add_windows(port, target, attribute, desired->base,
          desired->size, desired->remap);
 *cur = *desired;
}
