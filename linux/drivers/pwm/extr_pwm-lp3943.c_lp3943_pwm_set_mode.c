
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp3943_reg_cfg {int shift; int mask; int reg; } ;
struct lp3943_pwm_map {int num_outputs; int* output; } ;
struct lp3943_pwm {struct lp3943* lp3943; } ;
struct lp3943 {struct lp3943_reg_cfg* mux_cfg; } ;


 int lp3943_update_bits (struct lp3943*,int ,int ,int) ;

__attribute__((used)) static int lp3943_pwm_set_mode(struct lp3943_pwm *lp3943_pwm,
          struct lp3943_pwm_map *pwm_map,
          u8 val)
{
 struct lp3943 *lp3943 = lp3943_pwm->lp3943;
 const struct lp3943_reg_cfg *mux = lp3943->mux_cfg;
 int i, index, err;

 for (i = 0; i < pwm_map->num_outputs; i++) {
  index = pwm_map->output[i];
  err = lp3943_update_bits(lp3943, mux[index].reg,
      mux[index].mask,
      val << mux[index].shift);
  if (err)
   return err;
 }

 return 0;
}
