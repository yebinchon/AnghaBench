
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct ca91cx42_driver {scalar_t__ base; } ;


 int CA91CX42_VCSR_BS_SLOT_M ;
 scalar_t__ VCSR_BS ;
 int geoid ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static int ca91cx42_slot_get(struct vme_bridge *ca91cx42_bridge)
{
 u32 slot = 0;
 struct ca91cx42_driver *bridge;

 bridge = ca91cx42_bridge->driver_priv;

 if (!geoid) {
  slot = ioread32(bridge->base + VCSR_BS);
  slot = ((slot & CA91CX42_VCSR_BS_SLOT_M) >> 27);
 } else
  slot = geoid;

 return (int)slot;

}
