
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3943_pwm_map {int num_outputs; int* output; } ;
struct lp3943_pwm {struct lp3943* lp3943; } ;
struct lp3943 {int pin_used; } ;


 int clear_bit (int,int *) ;
 int kfree (struct lp3943_pwm_map*) ;

__attribute__((used)) static void lp3943_pwm_free_map(struct lp3943_pwm *lp3943_pwm,
    struct lp3943_pwm_map *pwm_map)
{
 struct lp3943 *lp3943 = lp3943_pwm->lp3943;
 int i, offset;

 for (i = 0; i < pwm_map->num_outputs; i++) {
  offset = pwm_map->output[i];
  clear_bit(offset, &lp3943->pin_used);
 }

 kfree(pwm_map);
}
