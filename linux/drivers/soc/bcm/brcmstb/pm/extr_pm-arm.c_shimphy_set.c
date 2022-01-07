
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_memc; TYPE_1__* memcs; int needs_ddr_pad; } ;
struct TYPE_3__ {scalar_t__ ddr_shimphy_base; } ;


 scalar_t__ SHIMPHY_DDR_PAD_CNTRL ;
 TYPE_2__ ctrl ;
 int readl_relaxed (scalar_t__) ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void shimphy_set(u32 value, u32 mask)
{
 int i;

 if (!ctrl.needs_ddr_pad)
  return;

 for (i = 0; i < ctrl.num_memc; i++) {
  u32 tmp;

  tmp = readl_relaxed(ctrl.memcs[i].ddr_shimphy_base +
   SHIMPHY_DDR_PAD_CNTRL);
  tmp = value | (tmp & mask);
  writel_relaxed(tmp, ctrl.memcs[i].ddr_shimphy_base +
   SHIMPHY_DDR_PAD_CNTRL);
 }
 wmb();
}
