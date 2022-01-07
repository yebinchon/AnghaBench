
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {scalar_t__ reg; } ;


 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void r8a66597_write(struct r8a66597 *r8a66597, u16 val,
      unsigned long offset)
{
 iowrite16(val, r8a66597->reg + offset);
}
