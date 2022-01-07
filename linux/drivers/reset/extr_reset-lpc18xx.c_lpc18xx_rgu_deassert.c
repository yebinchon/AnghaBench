
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int lpc18xx_rgu_setclear_reset (struct reset_controller_dev*,unsigned long,int) ;

__attribute__((used)) static int lpc18xx_rgu_deassert(struct reset_controller_dev *rcdev,
    unsigned long id)
{
 return lpc18xx_rgu_setclear_reset(rcdev, id, 0);
}
