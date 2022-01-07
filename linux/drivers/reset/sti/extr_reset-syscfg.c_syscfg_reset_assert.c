
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int syscfg_reset_program_hw (struct reset_controller_dev*,unsigned long,int) ;

__attribute__((used)) static int syscfg_reset_assert(struct reset_controller_dev *rcdev,
          unsigned long idx)
{
 return syscfg_reset_program_hw(rcdev, idx, 1);
}
