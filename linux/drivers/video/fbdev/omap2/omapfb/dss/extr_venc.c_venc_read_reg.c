
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;
 TYPE_1__ venc ;

__attribute__((used)) static inline u32 venc_read_reg(int idx)
{
 u32 l = __raw_readl(venc.base + idx);
 return l;
}
