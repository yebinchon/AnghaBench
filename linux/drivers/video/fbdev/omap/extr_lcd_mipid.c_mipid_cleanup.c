
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {scalar_t__ enabled; } ;
struct lcd_panel {int dummy; } ;


 int mipid_esd_stop_check (struct mipid_device*) ;
 struct mipid_device* to_mipid_device (struct lcd_panel*) ;

__attribute__((used)) static void mipid_cleanup(struct lcd_panel *panel)
{
 struct mipid_device *md = to_mipid_device(panel);

 if (md->enabled)
  mipid_esd_stop_check(md);
}
