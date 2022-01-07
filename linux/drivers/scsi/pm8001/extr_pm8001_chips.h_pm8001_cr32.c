
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct pm8001_hba_info {TYPE_1__* io_mem; } ;
struct TYPE_2__ {size_t memvirtaddr; } ;


 size_t readl (size_t) ;

__attribute__((used)) static inline u32 pm8001_cr32(struct pm8001_hba_info *pm8001_ha, u32 bar,
  u32 offset)
{
 return readl(pm8001_ha->io_mem[bar].memvirtaddr + offset);
}
