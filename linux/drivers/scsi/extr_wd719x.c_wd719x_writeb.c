
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wd719x {scalar_t__ base; } ;


 int iowrite8 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void wd719x_writeb(struct wd719x *wd, u8 reg, u8 val)
{
 iowrite8(val, wd->base + reg);
}
