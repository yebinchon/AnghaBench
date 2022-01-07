
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ const base; } ;


 int __raw_writel (int ,scalar_t__ const) ;
 TYPE_1__ dispc ;

__attribute__((used)) static inline void dispc_write_reg(const u16 idx, u32 val)
{
 __raw_writel(val, dispc.base + idx);
}
