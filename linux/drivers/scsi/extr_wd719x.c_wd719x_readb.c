
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wd719x {scalar_t__ base; } ;


 scalar_t__ ioread8 (scalar_t__) ;

__attribute__((used)) static inline u8 wd719x_readb(struct wd719x *wd, u8 reg)
{
 return ioread8(wd->base + reg);
}
