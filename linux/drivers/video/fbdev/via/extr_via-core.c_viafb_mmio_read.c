
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ engine_mmio; } ;


 TYPE_1__ global_dev ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline int viafb_mmio_read(int reg)
{
 return ioread32(global_dev.engine_mmio + reg);
}
