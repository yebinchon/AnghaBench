
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cedrus_dev {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cedrus_write(struct cedrus_dev *dev, u32 reg, u32 val)
{
 writel(val, dev->base + reg);
}
