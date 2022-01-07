
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {int crcsr_kernel; int crcsr_bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VME_CRCSR_BUF_SIZE ;
 int fake_ptr_to_pci (int ) ;
 int fake_slot_get (struct vme_bridge*) ;
 int kzalloc (int ,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int fake_crcsr_init(struct vme_bridge *fake_bridge)
{
 u32 vstat;
 struct fake_driver *bridge;

 bridge = fake_bridge->driver_priv;


 bridge->crcsr_kernel = kzalloc(VME_CRCSR_BUF_SIZE, GFP_KERNEL);
 bridge->crcsr_bus = fake_ptr_to_pci(bridge->crcsr_kernel);
 if (!bridge->crcsr_kernel)
  return -ENOMEM;

 vstat = fake_slot_get(fake_bridge);

 pr_info("CR/CSR Offset: %d\n", vstat);

 return 0;
}
