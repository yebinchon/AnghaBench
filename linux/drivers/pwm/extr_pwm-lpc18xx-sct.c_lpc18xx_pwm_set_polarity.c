
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;



__attribute__((used)) static int lpc18xx_pwm_set_polarity(struct pwm_chip *chip,
        struct pwm_device *pwm,
        enum pwm_polarity polarity)
{
 return 0;
}
