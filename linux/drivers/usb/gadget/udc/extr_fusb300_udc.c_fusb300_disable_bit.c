
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fusb300 {scalar_t__ reg; } ;


 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fusb300_disable_bit(struct fusb300 *fusb300, u32 offset,
    u32 value)
{
 u32 reg = ioread32(fusb300->reg + offset);

 reg &= ~value;
 iowrite32(reg, fusb300->reg + offset);
}
