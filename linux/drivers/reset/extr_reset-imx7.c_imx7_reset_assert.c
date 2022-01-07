
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int imx7_reset_set (struct reset_controller_dev*,unsigned long,int) ;

__attribute__((used)) static int imx7_reset_assert(struct reset_controller_dev *rcdev,
        unsigned long id)
{
 return imx7_reset_set(rcdev, id, 1);
}
