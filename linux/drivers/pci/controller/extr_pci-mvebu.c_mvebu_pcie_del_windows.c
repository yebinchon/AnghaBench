
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pcie_port {int dummy; } ;
typedef size_t phys_addr_t ;


 int fls (size_t) ;
 int mvebu_mbus_del_window (size_t,size_t) ;

__attribute__((used)) static void mvebu_pcie_del_windows(struct mvebu_pcie_port *port,
       phys_addr_t base, size_t size)
{
 while (size) {
  size_t sz = 1 << (fls(size) - 1);

  mvebu_mbus_del_window(base, sz);
  base += sz;
  size -= sz;
 }
}
