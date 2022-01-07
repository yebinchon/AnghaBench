
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int EBUSY ;
 int R_MII_MGMT_ADDRESS ;
 int R_MII_MGMT_INDICATORS ;
 int R_MII_MGMT_WRITE_DATA ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int pr_info (char*) ;
 int time_after (unsigned long,unsigned long) ;
 scalar_t__ xlr_nae_rdreg (int*,int ) ;
 int xlr_nae_wreg (int*,int ,int) ;

__attribute__((used)) static int xlr_phy_write(u32 *base_addr, int phy_addr, int regnum, u16 val)
{
 unsigned long timeout, stoptime, checktime;
 int timedout;


 timeout = msecs_to_jiffies(100);
 stoptime = jiffies + timeout;
 timedout = 0;

 xlr_nae_wreg(base_addr, R_MII_MGMT_ADDRESS, (phy_addr << 8) | regnum);


 xlr_nae_wreg(base_addr, R_MII_MGMT_WRITE_DATA, (u32)val);


 while (!timedout) {
  checktime = jiffies;
  if (xlr_nae_rdreg(base_addr, R_MII_MGMT_INDICATORS) == 0)
   break;
  timedout = time_after(checktime, stoptime);
 }
 if (timedout) {
  pr_info("Phy device write err: device busy");
  return -EBUSY;
 }

 return 0;
}
