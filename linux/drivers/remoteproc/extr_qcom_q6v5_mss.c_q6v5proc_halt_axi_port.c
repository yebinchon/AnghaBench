
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct regmap {int dummy; } ;
struct q6v5 {int dev; } ;


 scalar_t__ AXI_HALTACK_REG ;
 scalar_t__ AXI_HALTREQ_REG ;
 scalar_t__ AXI_IDLE_REG ;
 int HALT_ACK_TIMEOUT_MS ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int regmap_read (struct regmap*,scalar_t__,unsigned int*) ;
 int regmap_write (struct regmap*,scalar_t__,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void q6v5proc_halt_axi_port(struct q6v5 *qproc,
       struct regmap *halt_map,
       u32 offset)
{
 unsigned long timeout;
 unsigned int val;
 int ret;


 ret = regmap_read(halt_map, offset + AXI_IDLE_REG, &val);
 if (!ret && val)
  return;


 regmap_write(halt_map, offset + AXI_HALTREQ_REG, 1);


 timeout = jiffies + msecs_to_jiffies(HALT_ACK_TIMEOUT_MS);
 for (;;) {
  ret = regmap_read(halt_map, offset + AXI_HALTACK_REG, &val);
  if (ret || val || time_after(jiffies, timeout))
   break;

  msleep(1);
 }

 ret = regmap_read(halt_map, offset + AXI_IDLE_REG, &val);
 if (ret || !val)
  dev_err(qproc->dev, "port failed halt\n");


 regmap_write(halt_map, offset + AXI_HALTREQ_REG, 0);
}
