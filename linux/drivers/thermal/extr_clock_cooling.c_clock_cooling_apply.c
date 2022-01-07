
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_cooling_device {unsigned long clock_state; unsigned long clock_val; int lock; int clk; } ;


 int EINVAL ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 unsigned long clock_cooling_get_frequency (struct clock_cooling_device*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int clock_cooling_apply(struct clock_cooling_device *ccdev,
          unsigned long cooling_state)
{
 unsigned long clip_freq, cur_freq;
 int ret = 0;



 if (ccdev->clock_state == cooling_state)
  return 0;

 clip_freq = clock_cooling_get_frequency(ccdev, cooling_state);
 if (!clip_freq)
  return -EINVAL;

 cur_freq = clk_get_rate(ccdev->clk);

 mutex_lock(&ccdev->lock);
 ccdev->clock_state = cooling_state;
 ccdev->clock_val = clip_freq;

 if (cur_freq > clip_freq)
  ret = clk_set_rate(ccdev->clk, clip_freq);
 mutex_unlock(&ccdev->lock);

 return ret;
}
