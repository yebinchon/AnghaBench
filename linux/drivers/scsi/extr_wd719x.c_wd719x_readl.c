
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct wd719x {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 wd719x_readl(struct wd719x *wd, u8 reg)
{
 return ioread32(wd->base + reg);
}
