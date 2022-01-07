
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int update_mode_before_suspend; int sys_ck; } ;


 int HWA742_PLL_DIV_REG ;
 int HWA742_POWER_SAVE ;
 int TASK_UNINTERRUPTIBLE ;
 int clk_enable (int ) ;
 TYPE_1__ hwa742 ;
 int hwa742_read_reg (int ) ;
 int hwa742_set_update_mode (int ) ;
 int hwa742_write_reg (int ,int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static void hwa742_resume(void)
{
 clk_enable(hwa742.sys_ck);


 hwa742_write_reg(HWA742_POWER_SAVE, 0);
 while (1) {

  if (hwa742_read_reg(HWA742_PLL_DIV_REG) & (1 << 7))
   break;
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(5));
 }
 hwa742_set_update_mode(hwa742.update_mode_before_suspend);
}
