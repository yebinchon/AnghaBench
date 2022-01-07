
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int writel (int,void*) ;

__attribute__((used)) static inline void oxu_writel(void *base, u32 reg, u32 val)
{
 writel(val, base + reg);
}
