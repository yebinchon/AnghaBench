
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int readl (void*) ;

__attribute__((used)) static inline u32 oxu_readl(void *base, u32 reg)
{
 return readl(base + reg);
}
