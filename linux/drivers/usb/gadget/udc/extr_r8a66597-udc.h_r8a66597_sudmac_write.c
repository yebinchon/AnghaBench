
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8a66597 {scalar_t__ sudmac_reg; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void r8a66597_sudmac_write(struct r8a66597 *r8a66597, u32 val,
      unsigned long offset)
{
 iowrite32(val, r8a66597->sudmac_reg + offset);
}
