
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tps6598x {int dummy; } ;


 int tps6598x_block_read (struct tps6598x*,int ,int *,int) ;

__attribute__((used)) static inline int tps6598x_read16(struct tps6598x *tps, u8 reg, u16 *val)
{
 return tps6598x_block_read(tps, reg, val, sizeof(u16));
}
