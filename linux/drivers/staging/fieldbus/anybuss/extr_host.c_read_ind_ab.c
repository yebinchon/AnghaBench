
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ETIMEDOUT ;
 int HZ ;
 int REG_IND_AB ;
 int WARN (int,char*) ;
 int cpu_relax () ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 scalar_t__ time_before_eq (int,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int read_ind_ab(struct regmap *regmap)
{
 unsigned long timeout = jiffies + HZ / 2;
 unsigned int a, b, i = 0;

 while (time_before_eq(jiffies, timeout)) {
  regmap_read(regmap, REG_IND_AB, &a);
  regmap_read(regmap, REG_IND_AB, &b);
  if (likely(a == b))
   return (int)a;
  if (i < 10) {
   cpu_relax();
   i++;
  } else {
   usleep_range(500, 1000);
  }
 }
 WARN(1, "IND_AB register not stable");
 return -ETIMEDOUT;
}
