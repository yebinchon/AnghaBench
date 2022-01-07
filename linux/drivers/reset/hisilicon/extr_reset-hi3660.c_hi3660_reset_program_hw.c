
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct hi3660_reset_controller {int map; } ;


 unsigned int BIT (unsigned long) ;
 int regmap_write (int ,unsigned int,unsigned int) ;
 struct hi3660_reset_controller* to_hi3660_reset_controller (struct reset_controller_dev*) ;

__attribute__((used)) static int hi3660_reset_program_hw(struct reset_controller_dev *rcdev,
       unsigned long idx, bool assert)
{
 struct hi3660_reset_controller *rc = to_hi3660_reset_controller(rcdev);
 unsigned int offset = idx >> 8;
 unsigned int mask = BIT(idx & 0x1f);

 if (assert)
  return regmap_write(rc->map, offset, mask);
 else
  return regmap_write(rc->map, offset + 4, mask);
}
