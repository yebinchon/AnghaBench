
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_EDPAL ;
 scalar_t__ TSI148_LCSR_EDPAT ;
 int TSI148_LCSR_EDPAT_EDPCL ;
 scalar_t__ TSI148_LCSR_EDPAU ;
 scalar_t__ TSI148_LCSR_EDPXA ;
 scalar_t__ TSI148_LCSR_EDPXS ;
 int TSI148_LCSR_INTC_PERRC ;
 int dev_err (int ,char*,int ,int ,...) ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;

__attribute__((used)) static u32 tsi148_PERR_irqhandler(struct vme_bridge *tsi148_bridge)
{
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;

 dev_err(tsi148_bridge->parent, "PCI Exception at address: 0x%08x:%08x, "
  "attributes: %08x\n",
  ioread32be(bridge->base + TSI148_LCSR_EDPAU),
  ioread32be(bridge->base + TSI148_LCSR_EDPAL),
  ioread32be(bridge->base + TSI148_LCSR_EDPAT));

 dev_err(tsi148_bridge->parent, "PCI-X attribute reg: %08x, PCI-X split "
  "completion reg: %08x\n",
  ioread32be(bridge->base + TSI148_LCSR_EDPXA),
  ioread32be(bridge->base + TSI148_LCSR_EDPXS));

 iowrite32be(TSI148_LCSR_EDPAT_EDPCL, bridge->base + TSI148_LCSR_EDPAT);

 return TSI148_LCSR_INTC_PERRC;
}
