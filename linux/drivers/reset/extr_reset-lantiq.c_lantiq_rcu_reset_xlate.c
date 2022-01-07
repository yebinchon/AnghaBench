
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {unsigned int nr_resets; } ;
struct of_phandle_args {unsigned int* args; } ;


 int EINVAL ;

__attribute__((used)) static int lantiq_rcu_reset_xlate(struct reset_controller_dev *rcdev,
      const struct of_phandle_args *reset_spec)
{
 unsigned int status, set;

 set = reset_spec->args[0];
 status = reset_spec->args[1];

 if (set >= rcdev->nr_resets || status >= rcdev->nr_resets)
  return -EINVAL;

 return (status << 8) | set;
}
