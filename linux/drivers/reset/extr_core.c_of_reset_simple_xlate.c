
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {scalar_t__ nr_resets; } ;
struct of_phandle_args {scalar_t__* args; } ;


 int EINVAL ;

__attribute__((used)) static int of_reset_simple_xlate(struct reset_controller_dev *rcdev,
     const struct of_phandle_args *reset_spec)
{
 if (reset_spec->args[0] >= rcdev->nr_resets)
  return -EINVAL;

 return reset_spec->args[0];
}
