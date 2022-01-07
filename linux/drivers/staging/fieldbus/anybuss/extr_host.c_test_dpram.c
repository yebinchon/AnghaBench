
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct regmap {int dummy; } ;


 int DPRAM_SIZE ;
 int EIO ;
 int regmap_read (struct regmap*,int,unsigned int*) ;
 int regmap_write (struct regmap*,int,scalar_t__) ;

__attribute__((used)) static int test_dpram(struct regmap *regmap)
{
 int i;
 unsigned int val;

 for (i = 0; i < DPRAM_SIZE; i++)
  regmap_write(regmap, i, (u8)i);
 for (i = 0; i < DPRAM_SIZE; i++) {
  regmap_read(regmap, i, &val);
  if ((u8)val != (u8)i)
   return -EIO;
 }
 return 0;
}
