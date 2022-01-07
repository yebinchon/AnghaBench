
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fusb300 {scalar_t__ reg; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fusb300_clear_int(struct fusb300 *fusb300, u32 offset,
         u32 value)
{
 iowrite32(value, fusb300->reg + offset);
}
