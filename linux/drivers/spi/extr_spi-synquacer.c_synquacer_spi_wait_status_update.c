
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct synquacer_spi {int dev; scalar_t__ regs; } ;


 int EBUSY ;
 int SYNQUACER_HSSPI_ENABLE_TMOUT_MSEC ;
 int SYNQUACER_HSSPI_MCTRL_MES ;
 scalar_t__ SYNQUACER_HSSPI_REG_MCTRL ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int synquacer_spi_wait_status_update(struct synquacer_spi *sspi,
         bool enable)
{
 u32 val;
 unsigned long timeout = jiffies +
  msecs_to_jiffies(SYNQUACER_HSSPI_ENABLE_TMOUT_MSEC);


 do {
  val = readl(sspi->regs + SYNQUACER_HSSPI_REG_MCTRL) &
        SYNQUACER_HSSPI_MCTRL_MES;
  if (enable && val)
   return 0;
  if (!enable && !val)
   return 0;
 } while (time_before(jiffies, timeout));

 dev_err(sspi->dev, "timeout occurs in updating Module Enable Status\n");
 return -EBUSY;
}
