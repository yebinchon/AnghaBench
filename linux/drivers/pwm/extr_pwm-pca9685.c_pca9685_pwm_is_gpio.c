
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pca9685 {int dummy; } ;



__attribute__((used)) static inline bool pca9685_pwm_is_gpio(struct pca9685 *pca,
           struct pwm_device *pwm)
{
 return 0;
}
