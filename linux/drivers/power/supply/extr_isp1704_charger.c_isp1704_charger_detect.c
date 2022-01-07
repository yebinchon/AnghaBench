
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1704_charger {scalar_t__ online; } ;


 int ISP1704_PWR_CTRL ;
 int ISP1704_PWR_CTRL_DPVSRC_EN ;
 int ISP1704_PWR_CTRL_SWCTRL ;
 int ISP1704_PWR_CTRL_VDAT_DET ;
 int ULPI_SET (int ) ;
 int isp1704_charger_verify (struct isp1704_charger*) ;
 int isp1704_read (struct isp1704_charger*,int ) ;
 int isp1704_write (struct isp1704_charger*,int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int isp1704_charger_detect(struct isp1704_charger *isp)
{
 unsigned long timeout;
 u8 pwr_ctrl;
 int ret = 0;

 pwr_ctrl = isp1704_read(isp, ISP1704_PWR_CTRL);


 isp1704_write(isp, ISP1704_PWR_CTRL,
   ISP1704_PWR_CTRL_SWCTRL);


 isp1704_write(isp, ULPI_SET(ISP1704_PWR_CTRL),
   ISP1704_PWR_CTRL_SWCTRL
   | ISP1704_PWR_CTRL_DPVSRC_EN);
 usleep_range(1000, 2000);

 timeout = jiffies + msecs_to_jiffies(300);
 do {

  if (isp1704_read(isp, ISP1704_PWR_CTRL)
    & ISP1704_PWR_CTRL_VDAT_DET) {
   ret = isp1704_charger_verify(isp);
   break;
  }
 } while (!time_after(jiffies, timeout) && isp->online);


 isp1704_write(isp, ISP1704_PWR_CTRL, pwr_ctrl);

 return ret;
}
