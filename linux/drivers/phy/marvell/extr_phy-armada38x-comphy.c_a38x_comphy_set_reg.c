
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a38x_comphy_lane {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void a38x_comphy_set_reg(struct a38x_comphy_lane *lane,
    unsigned int offset, u32 mask, u32 value)
{
 u32 val;

 val = readl_relaxed(lane->base + offset) & ~mask;
 writel(val | value, lane->base + offset);
}
