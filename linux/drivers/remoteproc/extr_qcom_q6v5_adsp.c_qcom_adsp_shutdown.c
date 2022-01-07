
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_adsp {int restart; int pdc_sync_reset; scalar_t__ halt_lpass; int halt_map; int dev; int clks; int num_clks; scalar_t__ qdsp6ss_base; } ;


 int ACK_TIMEOUT ;
 scalar_t__ LPASS_HALTACK_REG ;
 scalar_t__ LPASS_HALTREQ_REG ;
 scalar_t__ LPASS_MASTER_IDLE_REG ;
 scalar_t__ LPASS_PWR_ON_REG ;
 scalar_t__ RET_CFG_REG ;
 int clk_bulk_disable_unprepare (int ,int ) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 unsigned int readl (scalar_t__) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 int regmap_write (int ,scalar_t__,int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int qcom_adsp_shutdown(struct qcom_adsp *adsp)
{
 unsigned long timeout;
 unsigned int val;
 int ret;


 val = readl(adsp->qdsp6ss_base + RET_CFG_REG);
 val |= 0x1;
 writel(val, adsp->qdsp6ss_base + RET_CFG_REG);

 clk_bulk_disable_unprepare(adsp->num_clks, adsp->clks);


 ret = regmap_read(adsp->halt_map,
   adsp->halt_lpass + LPASS_PWR_ON_REG, &val);
 if (ret || !val)
  goto reset;

 ret = regmap_read(adsp->halt_map,
   adsp->halt_lpass + LPASS_MASTER_IDLE_REG,
   &val);
 if (ret || val)
  goto reset;

 regmap_write(adsp->halt_map,
   adsp->halt_lpass + LPASS_HALTREQ_REG, 1);


 timeout = jiffies + msecs_to_jiffies(ACK_TIMEOUT);
 for (;;) {
  ret = regmap_read(adsp->halt_map,
   adsp->halt_lpass + LPASS_HALTACK_REG, &val);
  if (ret || val || time_after(jiffies, timeout))
   break;

  usleep_range(1000, 1100);
 }

 ret = regmap_read(adsp->halt_map,
   adsp->halt_lpass + LPASS_MASTER_IDLE_REG, &val);
 if (ret || !val)
  dev_err(adsp->dev, "port failed halt\n");

reset:

 reset_control_assert(adsp->pdc_sync_reset);

 reset_control_assert(adsp->restart);

 usleep_range(200, 300);


 regmap_write(adsp->halt_map, adsp->halt_lpass + LPASS_HALTREQ_REG, 0);


 reset_control_deassert(adsp->pdc_sync_reset);

 reset_control_deassert(adsp->restart);

 usleep_range(200, 300);

 return 0;
}
