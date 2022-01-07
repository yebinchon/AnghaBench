
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ engine_mmio; } ;


 TYPE_1__ global_dev ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void viafb_mmio_write(int reg, u32 v)
{
 iowrite32(v, global_dev.engine_mmio + reg);
}
