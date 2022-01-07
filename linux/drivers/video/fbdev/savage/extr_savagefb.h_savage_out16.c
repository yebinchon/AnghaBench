
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ vbase; } ;
struct savagefb_par {TYPE_1__ mmio; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void savage_out16(u32 addr, u16 val, struct savagefb_par *par)
{
 writew(val, par->mmio.vbase + addr);
}
