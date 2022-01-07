
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct crystalcove_pwm {int regmap; } ;


 int BACKLIGHT_EN ;
 int regmap_write (int ,int ,int ) ;
 struct crystalcove_pwm* to_crc_pwm (struct pwm_chip*) ;

__attribute__((used)) static void crc_pwm_disable(struct pwm_chip *c, struct pwm_device *pwm)
{
 struct crystalcove_pwm *crc_pwm = to_crc_pwm(c);

 regmap_write(crc_pwm->regmap, BACKLIGHT_EN, 0);
}
