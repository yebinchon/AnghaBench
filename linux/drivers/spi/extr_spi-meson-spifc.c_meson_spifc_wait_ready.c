
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_spifc {int regmap; } ;


 int ETIMEDOUT ;
 int REG_SLAVE ;
 int SLAVE_TRST_DONE ;
 int cond_resched () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int regmap_read (int ,int ,int*) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int meson_spifc_wait_ready(struct meson_spifc *spifc)
{
 unsigned long deadline = jiffies + msecs_to_jiffies(5);
 u32 data;

 do {
  regmap_read(spifc->regmap, REG_SLAVE, &data);
  if (data & SLAVE_TRST_DONE)
   return 0;
  cond_resched();
 } while (!time_after(jiffies, deadline));

 return -ETIMEDOUT;
}
