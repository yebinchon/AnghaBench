
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_rtc {int pie_lock; TYPE_1__* data; } ;
struct TYPE_2__ {int (* set_freq ) (struct s3c_rtc*,int) ;} ;


 int EINVAL ;
 int is_power_of_2 (int) ;
 int s3c_rtc_disable_clk (struct s3c_rtc*) ;
 int s3c_rtc_enable_clk (struct s3c_rtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct s3c_rtc*,int) ;

__attribute__((used)) static int s3c_rtc_setfreq(struct s3c_rtc *info, int freq)
{
 int ret;

 if (!is_power_of_2(freq))
  return -EINVAL;

 ret = s3c_rtc_enable_clk(info);
 if (ret)
  return ret;
 spin_lock_irq(&info->pie_lock);

 if (info->data->set_freq)
  info->data->set_freq(info, freq);

 spin_unlock_irq(&info->pie_lock);
 s3c_rtc_disable_clk(info);

 return 0;
}
