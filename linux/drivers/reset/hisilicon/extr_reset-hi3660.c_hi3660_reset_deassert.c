
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int hi3660_reset_program_hw (struct reset_controller_dev*,unsigned long,int) ;

__attribute__((used)) static int hi3660_reset_deassert(struct reset_controller_dev *rcdev,
     unsigned long idx)
{
 return hi3660_reset_program_hw(rcdev, idx, 0);
}
