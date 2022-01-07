
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct ca91cx42_driver* driver_priv; } ;
struct ca91cx42_driver {scalar_t__ base; } ;


 int CA91CX42_LINT_VERR ;
 scalar_t__ DGCS ;
 int dev_err (int ,char*,int) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 ca91cx42_VERR_irqhandler(struct vme_bridge *ca91cx42_bridge)
{
 int val;
 struct ca91cx42_driver *bridge;

 bridge = ca91cx42_bridge->driver_priv;

 val = ioread32(bridge->base + DGCS);

 if (!(val & 0x00000800)) {
  dev_err(ca91cx42_bridge->parent, "ca91cx42_VERR_irqhandler DMA "
   "Read Error DGCS=%08X\n", val);
 }

 return CA91CX42_LINT_VERR;
}
