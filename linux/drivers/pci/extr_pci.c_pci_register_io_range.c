
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logic_pio_hwaddr {int flags; scalar_t__ hw_start; scalar_t__ size; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
typedef scalar_t__ resource_size_t ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int LOGIC_PIO_CPU_MMIO ;
 int kfree (struct logic_pio_hwaddr*) ;
 struct logic_pio_hwaddr* kzalloc (int,int ) ;
 int logic_pio_register_range (struct logic_pio_hwaddr*) ;

int pci_register_io_range(struct fwnode_handle *fwnode, phys_addr_t addr,
   resource_size_t size)
{
 int ret = 0;
 return ret;
}
