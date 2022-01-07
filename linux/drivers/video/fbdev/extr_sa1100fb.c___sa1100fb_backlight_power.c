
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1100fb_info {TYPE_1__* inf; int dev; } ;
struct TYPE_2__ {int (* backlight_power ) (int) ;} ;


 int dev_dbg (int ,char*,char*) ;
 int stub1 (int) ;

__attribute__((used)) static inline void __sa1100fb_backlight_power(struct sa1100fb_info *fbi, int on)
{
 dev_dbg(fbi->dev, "backlight o%s\n", on ? "n" : "ff");

 if (fbi->inf->backlight_power)
  fbi->inf->backlight_power(on);
}
