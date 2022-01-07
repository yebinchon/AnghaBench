
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tps6598x {int dummy; } ;


 int tps6598x_block_write (struct tps6598x*,int ,int *,int) ;

__attribute__((used)) static inline int tps6598x_write64(struct tps6598x *tps, u8 reg, u64 val)
{
 return tps6598x_block_write(tps, reg, &val, sizeof(u64));
}
