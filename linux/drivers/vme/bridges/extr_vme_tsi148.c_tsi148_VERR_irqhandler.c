
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;


 int TSI148_LCSR_INTC_VERRC ;
 scalar_t__ TSI148_LCSR_VEAL ;
 scalar_t__ TSI148_LCSR_VEAT ;
 int TSI148_LCSR_VEAT_AM_M ;
 int TSI148_LCSR_VEAT_VEOF ;
 int TSI148_LCSR_VEAT_VESCL ;
 scalar_t__ TSI148_LCSR_VEAU ;
 int dev_err (int ,char*,...) ;
 scalar_t__ err_chk ;
 void* ioread32be (scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;
 int reg_join (unsigned int,unsigned int,unsigned long long*) ;
 int vme_bus_error_handler (struct vme_bridge*,unsigned long long,int) ;

__attribute__((used)) static u32 tsi148_VERR_irqhandler(struct vme_bridge *tsi148_bridge)
{
 unsigned int error_addr_high, error_addr_low;
 unsigned long long error_addr;
 u32 error_attrib;
 int error_am;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;

 error_addr_high = ioread32be(bridge->base + TSI148_LCSR_VEAU);
 error_addr_low = ioread32be(bridge->base + TSI148_LCSR_VEAL);
 error_attrib = ioread32be(bridge->base + TSI148_LCSR_VEAT);
 error_am = (error_attrib & TSI148_LCSR_VEAT_AM_M) >> 8;

 reg_join(error_addr_high, error_addr_low, &error_addr);


 if (error_attrib & TSI148_LCSR_VEAT_VEOF) {
  dev_err(tsi148_bridge->parent, "VME Bus Exception Overflow "
   "Occurred\n");
 }

 if (err_chk)
  vme_bus_error_handler(tsi148_bridge, error_addr, error_am);
 else
  dev_err(tsi148_bridge->parent,
   "VME Bus Error at address: 0x%llx, attributes: %08x\n",
   error_addr, error_attrib);


 iowrite32be(TSI148_LCSR_VEAT_VESCL, bridge->base + TSI148_LCSR_VEAT);

 return TSI148_LCSR_INTC_VERRC;
}
