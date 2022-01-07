
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 TYPE_1__ sossi ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sossi_write_reg(int reg, u32 value)
{
 writel(value, sossi.base + reg);
}
