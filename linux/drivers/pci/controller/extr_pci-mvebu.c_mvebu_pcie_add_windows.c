
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvebu_pcie_port {TYPE_2__* pcie; } ;
typedef size_t phys_addr_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 size_t MVEBU_MBUS_NO_REMAP ;
 int dev_err (int *,char*,size_t*,size_t*,int) ;
 int fls (size_t) ;
 int mvebu_mbus_add_window_remap_by_id (unsigned int,unsigned int,size_t,size_t,size_t) ;
 int mvebu_pcie_del_windows (struct mvebu_pcie_port*,size_t,size_t) ;

__attribute__((used)) static void mvebu_pcie_add_windows(struct mvebu_pcie_port *port,
       unsigned int target, unsigned int attribute,
       phys_addr_t base, size_t size,
       phys_addr_t remap)
{
 size_t size_mapped = 0;

 while (size) {
  size_t sz = 1 << (fls(size) - 1);
  int ret;

  ret = mvebu_mbus_add_window_remap_by_id(target, attribute, base,
       sz, remap);
  if (ret) {
   phys_addr_t end = base + sz - 1;

   dev_err(&port->pcie->pdev->dev,
    "Could not create MBus window at [mem %pa-%pa]: %d\n",
    &base, &end, ret);
   mvebu_pcie_del_windows(port, base - size_mapped,
            size_mapped);
   return;
  }

  size -= sz;
  size_mapped += sz;
  base += sz;
  if (remap != MVEBU_MBUS_NO_REMAP)
   remap += sz;
 }
}
