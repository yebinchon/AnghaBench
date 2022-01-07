
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct wd719x {scalar_t__ base; } ;


 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void wd719x_writew(struct wd719x *wd, u8 reg, u16 val)
{
 iowrite16(val, wd->base + reg);
}
