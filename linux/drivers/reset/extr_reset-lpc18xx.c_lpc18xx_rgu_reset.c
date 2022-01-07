
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct lpc18xx_rgu_data {int delay_us; } ;




 int lpc18xx_rgu_assert (struct reset_controller_dev*,unsigned long) ;
 int lpc18xx_rgu_setclear_reset (struct reset_controller_dev*,unsigned long,int) ;
 struct lpc18xx_rgu_data* to_rgu_data (struct reset_controller_dev*) ;
 int udelay (int ) ;

__attribute__((used)) static int lpc18xx_rgu_reset(struct reset_controller_dev *rcdev,
        unsigned long id)
{
 struct lpc18xx_rgu_data *rc = to_rgu_data(rcdev);

 lpc18xx_rgu_assert(rcdev, id);
 udelay(rc->delay_us);

 switch (id) {
 case 128:
 case 129:
  lpc18xx_rgu_setclear_reset(rcdev, id, 0);
 }

 return 0;
}
