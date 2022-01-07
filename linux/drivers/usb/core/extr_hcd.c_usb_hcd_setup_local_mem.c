
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysdev; } ;
struct usb_hcd {void* localmem_pool; TYPE_1__ self; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 scalar_t__ IS_ERR (void*) ;
 int MEMREMAP_WC ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int dev_to_node (int ) ;
 void* devm_gen_pool_create (int ,int,int ,int ) ;
 void* devm_memremap (int ,int ,size_t,int ) ;
 int gen_pool_add_virt (void*,unsigned long,int ,size_t,int ) ;

int usb_hcd_setup_local_mem(struct usb_hcd *hcd, phys_addr_t phys_addr,
       dma_addr_t dma, size_t size)
{
 int err;
 void *local_mem;

 hcd->localmem_pool = devm_gen_pool_create(hcd->self.sysdev, 4,
        dev_to_node(hcd->self.sysdev),
        dev_name(hcd->self.sysdev));
 if (IS_ERR(hcd->localmem_pool))
  return PTR_ERR(hcd->localmem_pool);

 local_mem = devm_memremap(hcd->self.sysdev, phys_addr,
      size, MEMREMAP_WC);
 if (IS_ERR(local_mem))
  return PTR_ERR(local_mem);






 err = gen_pool_add_virt(hcd->localmem_pool, (unsigned long)local_mem,
    dma, size, dev_to_node(hcd->self.sysdev));
 if (err < 0) {
  dev_err(hcd->self.sysdev, "gen_pool_add_virt failed with %d\n",
   err);
  return err;
 }

 return 0;
}
