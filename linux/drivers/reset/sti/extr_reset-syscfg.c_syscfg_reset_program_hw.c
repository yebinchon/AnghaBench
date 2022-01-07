
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct syscfg_reset_controller {struct syscfg_reset_channel* channels; scalar_t__ active_low; } ;
struct syscfg_reset_channel {scalar_t__ ack; int reset; } ;
struct reset_controller_dev {unsigned long nr_resets; } ;


 int EINVAL ;
 int ETIME ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int regmap_field_read (scalar_t__,scalar_t__*) ;
 int regmap_field_write (int ,scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct syscfg_reset_controller* to_syscfg_reset_controller (struct reset_controller_dev*) ;

__attribute__((used)) static int syscfg_reset_program_hw(struct reset_controller_dev *rcdev,
       unsigned long idx, int assert)
{
 struct syscfg_reset_controller *rst = to_syscfg_reset_controller(rcdev);
 const struct syscfg_reset_channel *ch;
 u32 ctrl_val = rst->active_low ? !assert : !!assert;
 int err;

 if (idx >= rcdev->nr_resets)
  return -EINVAL;

 ch = &rst->channels[idx];

 err = regmap_field_write(ch->reset, ctrl_val);
 if (err)
  return err;

 if (ch->ack) {
  unsigned long timeout = jiffies + msecs_to_jiffies(1000);
  u32 ack_val;

  while (1) {
   err = regmap_field_read(ch->ack, &ack_val);
   if (err)
    return err;

   if (ack_val == ctrl_val)
    break;

   if (time_after(jiffies, timeout))
    return -ETIME;

   cpu_relax();
  }
 }

 return 0;
}
