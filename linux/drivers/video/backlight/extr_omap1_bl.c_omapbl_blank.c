
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_backlight {int current_intensity; int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* set_power ) (int ,int) ;} ;







 int omapbl_send_enable (int) ;
 int omapbl_send_intensity (int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void omapbl_blank(struct omap_backlight *bl, int mode)
{
 if (bl->pdata->set_power)
  bl->pdata->set_power(bl->dev, mode);

 switch (mode) {
 case 131:
 case 128:
 case 132:
 case 130:
  omapbl_send_intensity(0);
  omapbl_send_enable(0);
  break;

 case 129:
  omapbl_send_intensity(bl->current_intensity);
  omapbl_send_enable(1);
  break;
 }
}
