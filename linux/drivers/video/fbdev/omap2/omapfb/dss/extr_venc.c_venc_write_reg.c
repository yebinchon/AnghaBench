
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;
 TYPE_1__ venc ;

__attribute__((used)) static inline void venc_write_reg(int idx, u32 val)
{
 __raw_writel(val, venc.base + idx);
}
