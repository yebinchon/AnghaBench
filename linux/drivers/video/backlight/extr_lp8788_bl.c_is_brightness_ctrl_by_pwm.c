
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lp8788_bl_ctrl_mode { ____Placeholder_lp8788_bl_ctrl_mode } lp8788_bl_ctrl_mode ;


 int LP8788_BL_COMB_PWM_BASED ;

__attribute__((used)) static inline bool is_brightness_ctrl_by_pwm(enum lp8788_bl_ctrl_mode mode)
{
 return mode == LP8788_BL_COMB_PWM_BASED;
}
