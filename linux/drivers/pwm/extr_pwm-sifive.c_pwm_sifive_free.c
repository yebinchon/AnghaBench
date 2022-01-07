
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_sifive_ddata {int lock; int user_count; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pwm_sifive_ddata* pwm_sifive_chip_to_ddata (struct pwm_chip*) ;

__attribute__((used)) static void pwm_sifive_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct pwm_sifive_ddata *ddata = pwm_sifive_chip_to_ddata(chip);

 mutex_lock(&ddata->lock);
 ddata->user_count--;
 mutex_unlock(&ddata->lock);
}
