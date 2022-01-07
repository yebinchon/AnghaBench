
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps6598x {int dummy; } ;


 int tps6598x_block_write (struct tps6598x*,int ,char const*,int) ;

__attribute__((used)) static inline int
tps6598x_write_4cc(struct tps6598x *tps, u8 reg, const char *val)
{
 return tps6598x_block_write(tps, reg, val, 4);
}
