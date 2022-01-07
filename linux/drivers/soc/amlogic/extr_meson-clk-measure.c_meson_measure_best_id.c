
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_msr_id {int dummy; } ;


 unsigned int DIV_MAX ;
 unsigned int DIV_MIN ;
 scalar_t__ DIV_STEP ;
 int EINVAL ;
 int meson_measure_id (struct meson_msr_id*,unsigned int) ;

__attribute__((used)) static int meson_measure_best_id(struct meson_msr_id *clk_msr_id,
        unsigned int *precision)
{
 unsigned int duration = DIV_MAX;
 int ret;


 do {
  ret = meson_measure_id(clk_msr_id, duration);
  if (ret >= 0)
   *precision = (2 * 1000000) / duration;
  else
   duration -= DIV_STEP;
 } while (duration >= DIV_MIN && ret == -EINVAL);

 return ret;
}
