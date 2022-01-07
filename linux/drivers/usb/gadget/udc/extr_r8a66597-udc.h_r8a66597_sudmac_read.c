
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8a66597 {scalar_t__ sudmac_reg; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 r8a66597_sudmac_read(struct r8a66597 *r8a66597,
           unsigned long offset)
{
 return ioread32(r8a66597->sudmac_reg + offset);
}
