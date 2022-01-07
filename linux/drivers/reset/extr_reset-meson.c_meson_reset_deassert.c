
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int meson_reset_level (struct reset_controller_dev*,unsigned long,int) ;

__attribute__((used)) static int meson_reset_deassert(struct reset_controller_dev *rcdev,
    unsigned long id)
{
 return meson_reset_level(rcdev, id, 0);
}
