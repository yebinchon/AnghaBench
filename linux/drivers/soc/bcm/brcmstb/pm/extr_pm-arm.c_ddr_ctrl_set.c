
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_memc; scalar_t__ warm_boot_offset; TYPE_1__* memcs; } ;
struct TYPE_3__ {scalar_t__ ddr_ctrl; } ;


 TYPE_2__ ctrl ;
 int readl_relaxed (scalar_t__) ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void ddr_ctrl_set(bool warmboot)
{
 int i;

 for (i = 0; i < ctrl.num_memc; i++) {
  u32 tmp;

  tmp = readl_relaxed(ctrl.memcs[i].ddr_ctrl +
    ctrl.warm_boot_offset);
  if (warmboot)
   tmp |= 1;
  else
   tmp &= ~1;
  writel_relaxed(tmp, ctrl.memcs[i].ddr_ctrl +
    ctrl.warm_boot_offset);
 }

 wmb();
}
