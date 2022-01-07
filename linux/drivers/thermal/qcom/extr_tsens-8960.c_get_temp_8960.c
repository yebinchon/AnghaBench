
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_sensor {int status; } ;
struct tsens_priv {int tm_map; struct tsens_sensor* sensor; } ;


 int ETIMEDOUT ;
 int INT_STATUS_ADDR ;
 int TIMEOUT_US ;
 int TRDY_MASK ;
 int code_to_mdegC (int,struct tsens_sensor const*) ;
 unsigned long jiffies ;
 int regmap_read (int ,int ,int*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 unsigned long usecs_to_jiffies (int ) ;

__attribute__((used)) static int get_temp_8960(struct tsens_priv *priv, int id, int *temp)
{
 int ret;
 u32 code, trdy;
 const struct tsens_sensor *s = &priv->sensor[id];
 unsigned long timeout;

 timeout = jiffies + usecs_to_jiffies(TIMEOUT_US);
 do {
  ret = regmap_read(priv->tm_map, INT_STATUS_ADDR, &trdy);
  if (ret)
   return ret;
  if (!(trdy & TRDY_MASK))
   continue;
  ret = regmap_read(priv->tm_map, s->status, &code);
  if (ret)
   return ret;
  *temp = code_to_mdegC(code, s);
  return 0;
 } while (time_before(jiffies, timeout));

 return -ETIMEDOUT;
}
