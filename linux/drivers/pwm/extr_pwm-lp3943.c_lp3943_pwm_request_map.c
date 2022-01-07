
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp3943_pwm_map {int* output; int num_outputs; } ;
struct lp3943_pwm {struct lp3943* lp3943; struct lp3943_platform_data* pdata; } ;
struct lp3943_platform_data {TYPE_1__** pwms; } ;
struct lp3943 {int pin_used; } ;
struct TYPE_2__ {int* output; int num_outputs; } ;


 int EBUSY ;
 int ENOMEM ;
 struct lp3943_pwm_map* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct lp3943_pwm_map*) ;
 struct lp3943_pwm_map* kzalloc (int,int ) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static struct lp3943_pwm_map *
lp3943_pwm_request_map(struct lp3943_pwm *lp3943_pwm, int hwpwm)
{
 struct lp3943_platform_data *pdata = lp3943_pwm->pdata;
 struct lp3943 *lp3943 = lp3943_pwm->lp3943;
 struct lp3943_pwm_map *pwm_map;
 int i, offset;

 pwm_map = kzalloc(sizeof(*pwm_map), GFP_KERNEL);
 if (!pwm_map)
  return ERR_PTR(-ENOMEM);

 pwm_map->output = pdata->pwms[hwpwm]->output;
 pwm_map->num_outputs = pdata->pwms[hwpwm]->num_outputs;

 for (i = 0; i < pwm_map->num_outputs; i++) {
  offset = pwm_map->output[i];


  if (test_and_set_bit(offset, &lp3943->pin_used)) {
   kfree(pwm_map);
   return ERR_PTR(-EBUSY);
  }
 }

 return pwm_map;
}
