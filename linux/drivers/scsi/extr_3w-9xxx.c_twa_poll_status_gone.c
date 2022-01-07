
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int TW_Device_Extension ;


 int HZ ;
 int TW_STATUS_REG_ADDR (int *) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readl (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ twa_check_bits (int) ;
 int twa_decode_bits (int *,int) ;

__attribute__((used)) static int twa_poll_status_gone(TW_Device_Extension *tw_dev, u32 flag, int seconds)
{
 u32 status_reg_value;
 unsigned long before;
 int retval = 1;

 status_reg_value = readl(TW_STATUS_REG_ADDR(tw_dev));
 before = jiffies;

 if (twa_check_bits(status_reg_value))
  twa_decode_bits(tw_dev, status_reg_value);

 while ((status_reg_value & flag) != 0) {
  status_reg_value = readl(TW_STATUS_REG_ADDR(tw_dev));
  if (twa_check_bits(status_reg_value))
   twa_decode_bits(tw_dev, status_reg_value);

  if (time_after(jiffies, before + HZ * seconds))
   goto out;

  msleep(50);
 }
 retval = 0;
out:
 return retval;
}
