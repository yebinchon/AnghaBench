
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int quirks; int last_dme_cmd_tstamp; } ;


 unsigned long MIN_DELAY_BEFORE_DME_CMDS_US ;
 int UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_us (int ) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
{

 unsigned long min_sleep_time_us;

 if (!(hba->quirks & UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS))
  return;





 if (unlikely(!ktime_to_us(hba->last_dme_cmd_tstamp))) {
  min_sleep_time_us = 1000;
 } else {
  unsigned long delta =
   (unsigned long) ktime_to_us(
    ktime_sub(ktime_get(),
    hba->last_dme_cmd_tstamp));

  if (delta < 1000)
   min_sleep_time_us =
    1000 - delta;
  else
   return;
 }


 usleep_range(min_sleep_time_us, min_sleep_time_us + 50);
}
