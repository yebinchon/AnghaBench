
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_gen3_thermal_tsc {scalar_t__ base; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 rcar_gen3_thermal_read(struct rcar_gen3_thermal_tsc *tsc,
      u32 reg)
{
 return ioread32(tsc->base + reg);
}
