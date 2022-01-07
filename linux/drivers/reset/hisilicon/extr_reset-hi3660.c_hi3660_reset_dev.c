
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int hi3660_reset_assert (struct reset_controller_dev*,unsigned long) ;
 int hi3660_reset_deassert (struct reset_controller_dev*,unsigned long) ;

__attribute__((used)) static int hi3660_reset_dev(struct reset_controller_dev *rcdev,
       unsigned long idx)
{
 int err;

 err = hi3660_reset_assert(rcdev, idx);
 if (err)
  return err;

 return hi3660_reset_deassert(rcdev, idx);
}
