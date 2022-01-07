
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 scalar_t__ MAX_COMP2 ;
 int MFGPT_REG_CMP1 ;
 int MFGPT_REG_COUNTER ;
 int MFGPT_REG_SETUP ;
 scalar_t__ MFGPT_SETUP_CNTEN ;
 int cs5535_mfgpt_free_timer (int ) ;
 int cs5535_mfgpt_write (int ,int ,scalar_t__) ;
 scalar_t__* dim_table ;
 int pwm_timer ;

__attribute__((used)) static int ot200_backlight_remove(struct platform_device *pdev)
{

 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_COUNTER, 0);
 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_SETUP, MFGPT_SETUP_CNTEN);
 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_CMP1,
  MAX_COMP2 - dim_table[100]);

 cs5535_mfgpt_free_timer(pwm_timer);

 return 0;
}
