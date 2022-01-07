
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int polarity; } ;
struct pwm_device {unsigned int pwm; unsigned int hwpwm; TYPE_1__ state; struct pwm_chip* chip; } ;
struct pwm_chip {unsigned int npwm; int base; int list; TYPE_2__* ops; struct pwm_device* pwms; int dev; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;
struct TYPE_4__ {int (* get_state ) (struct pwm_chip*,struct pwm_device*,TYPE_1__*) ;} ;


 int CONFIG_OF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ENABLED (int ) ;
 int alloc_pwms (int,unsigned int) ;
 int allocated_pwms ;
 int bitmap_set (int ,unsigned int,unsigned int) ;
 struct pwm_device* kcalloc (unsigned int,int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_pwmchip_add (struct pwm_chip*) ;
 int pwm_chips ;
 int pwm_lock ;
 int pwm_ops_check (TYPE_2__*) ;
 int pwm_tree ;
 int pwmchip_sysfs_export (struct pwm_chip*) ;
 int radix_tree_insert (int *,unsigned int,struct pwm_device*) ;
 int stub1 (struct pwm_chip*,struct pwm_device*,TYPE_1__*) ;

int pwmchip_add_with_polarity(struct pwm_chip *chip,
         enum pwm_polarity polarity)
{
 struct pwm_device *pwm;
 unsigned int i;
 int ret;

 if (!chip || !chip->dev || !chip->ops || !chip->npwm)
  return -EINVAL;

 if (!pwm_ops_check(chip->ops))
  return -EINVAL;

 mutex_lock(&pwm_lock);

 ret = alloc_pwms(chip->base, chip->npwm);
 if (ret < 0)
  goto out;

 chip->pwms = kcalloc(chip->npwm, sizeof(*pwm), GFP_KERNEL);
 if (!chip->pwms) {
  ret = -ENOMEM;
  goto out;
 }

 chip->base = ret;

 for (i = 0; i < chip->npwm; i++) {
  pwm = &chip->pwms[i];

  pwm->chip = chip;
  pwm->pwm = chip->base + i;
  pwm->hwpwm = i;
  pwm->state.polarity = polarity;

  if (chip->ops->get_state)
   chip->ops->get_state(chip, pwm, &pwm->state);

  radix_tree_insert(&pwm_tree, pwm->pwm, pwm);
 }

 bitmap_set(allocated_pwms, chip->base, chip->npwm);

 INIT_LIST_HEAD(&chip->list);
 list_add(&chip->list, &pwm_chips);

 ret = 0;

 if (IS_ENABLED(CONFIG_OF))
  of_pwmchip_add(chip);

out:
 mutex_unlock(&pwm_lock);

 if (!ret)
  pwmchip_sysfs_export(chip);

 return ret;
}
