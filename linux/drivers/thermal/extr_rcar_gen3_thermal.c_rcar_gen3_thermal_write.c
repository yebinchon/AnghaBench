
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_gen3_thermal_tsc {scalar_t__ base; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rcar_gen3_thermal_write(struct rcar_gen3_thermal_tsc *tsc,
        u32 reg, u32 data)
{
 iowrite32(data, tsc->base + reg);
}
