
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct clock_cooling_device {int clock_val; } ;
struct clk_notifier_data {int new_rate; } ;



 int NOTIFY_BAD ;
 int NOTIFY_DONE ;


 struct clock_cooling_device* to_clock_cooling_device (struct notifier_block*) ;

__attribute__((used)) static int clock_cooling_clock_notifier(struct notifier_block *nb,
     unsigned long event, void *data)
{
 struct clk_notifier_data *ndata = data;
 struct clock_cooling_device *ccdev = to_clock_cooling_device(nb);

 switch (event) {
 case 128:






  if (ndata->new_rate > ccdev->clock_val)
   return NOTIFY_BAD;

 case 129:
 case 130:
 default:
  return NOTIFY_DONE;
 }
}
