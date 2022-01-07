
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {int flush_image; scalar_t__ base; int crcsr_bus; int crcsr_kernel; } ;
struct pci_dev {int dummy; } ;


 int ENOMEM ;
 scalar_t__ TSI148_CBAR ;
 int TSI148_CRCSR_CBAR_M ;
 scalar_t__ TSI148_LCSR_CRAT ;
 int TSI148_LCSR_CRAT_EN ;
 scalar_t__ TSI148_LCSR_CROL ;
 scalar_t__ TSI148_LCSR_CROU ;
 int VME_CRCSR ;
 int VME_CRCSR_BUF_SIZE ;
 int VME_D16 ;
 int VME_SCT ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 scalar_t__ err_chk ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;
 int pci_zalloc_consistent (struct pci_dev*,int ,int *) ;
 int reg_split (int ,int*,int*) ;
 int tsi148_master_set (int ,int,int,int,int ,int ,int ) ;
 int tsi148_slot_get (struct vme_bridge*) ;

__attribute__((used)) static int tsi148_crcsr_init(struct vme_bridge *tsi148_bridge,
 struct pci_dev *pdev)
{
 u32 cbar, crat, vstat;
 u32 crcsr_bus_high, crcsr_bus_low;
 int retval;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;


 bridge->crcsr_kernel = pci_zalloc_consistent(pdev, VME_CRCSR_BUF_SIZE,
           &bridge->crcsr_bus);
 if (!bridge->crcsr_kernel) {
  dev_err(tsi148_bridge->parent, "Failed to allocate memory for "
   "CR/CSR image\n");
  return -ENOMEM;
 }

 reg_split(bridge->crcsr_bus, &crcsr_bus_high, &crcsr_bus_low);

 iowrite32be(crcsr_bus_high, bridge->base + TSI148_LCSR_CROU);
 iowrite32be(crcsr_bus_low, bridge->base + TSI148_LCSR_CROL);


 cbar = ioread32be(bridge->base + TSI148_CBAR);
 cbar = (cbar & TSI148_CRCSR_CBAR_M)>>3;

 vstat = tsi148_slot_get(tsi148_bridge);

 if (cbar != vstat) {
  cbar = vstat;
  dev_info(tsi148_bridge->parent, "Setting CR/CSR offset\n");
  iowrite32be(cbar<<3, bridge->base + TSI148_CBAR);
 }
 dev_info(tsi148_bridge->parent, "CR/CSR Offset: %d\n", cbar);

 crat = ioread32be(bridge->base + TSI148_LCSR_CRAT);
 if (crat & TSI148_LCSR_CRAT_EN)
  dev_info(tsi148_bridge->parent, "CR/CSR already enabled\n");
 else {
  dev_info(tsi148_bridge->parent, "Enabling CR/CSR space\n");
  iowrite32be(crat | TSI148_LCSR_CRAT_EN,
   bridge->base + TSI148_LCSR_CRAT);
 }





 if (err_chk) {
  retval = tsi148_master_set(bridge->flush_image, 1,
   (vstat * 0x80000), 0x80000, VME_CRCSR, VME_SCT,
   VME_D16);
  if (retval)
   dev_err(tsi148_bridge->parent, "Configuring flush image"
    " failed\n");
 }

 return 0;

}
