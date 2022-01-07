
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int pwm; } ;
struct pwm_chip {unsigned int npwm; struct pwm_device* pwms; int base; } ;


 int allocated_pwms ;
 int bitmap_clear (int ,int ,unsigned int) ;
 int kfree (struct pwm_device*) ;
 int pwm_tree ;
 int radix_tree_delete (int *,int ) ;

__attribute__((used)) static void free_pwms(struct pwm_chip *chip)
{
 unsigned int i;

 for (i = 0; i < chip->npwm; i++) {
  struct pwm_device *pwm = &chip->pwms[i];

  radix_tree_delete(&pwm_tree, pwm->pwm);
 }

 bitmap_clear(allocated_pwms, chip->base, chip->npwm);

 kfree(chip->pwms);
 chip->pwms = ((void*)0);
}
