
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_name; } ;
struct omapfb_platform_data {TYPE_1__ lcd; } ;
struct omapfb_device {int dev; TYPE_2__* ctrl; TYPE_2__* int_ctrl; } ;
typedef int name ;
struct TYPE_5__ {char* name; } ;


 int ARRAY_SIZE (TYPE_2__**) ;
 TYPE_2__** ctrls ;
 int dev_dbg (int ,char*,char*) ;
 struct omapfb_platform_data* dev_get_platdata (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int omapfb_find_ctrl(struct omapfb_device *fbdev)
{
 struct omapfb_platform_data *conf;
 char name[17];
 int i;

 conf = dev_get_platdata(fbdev->dev);

 fbdev->ctrl = ((void*)0);

 strncpy(name, conf->lcd.ctrl_name, sizeof(name) - 1);
 name[sizeof(name) - 1] = '\0';

 if (strcmp(name, "internal") == 0) {
  fbdev->ctrl = fbdev->int_ctrl;
  return 0;
 }

 for (i = 0; i < ARRAY_SIZE(ctrls); i++) {
  dev_dbg(fbdev->dev, "ctrl %s\n", ctrls[i]->name);
  if (strcmp(ctrls[i]->name, name) == 0) {
   fbdev->ctrl = ctrls[i];
   break;
  }
 }

 if (fbdev->ctrl == ((void*)0)) {
  dev_dbg(fbdev->dev, "ctrl %s not supported\n", name);
  return -1;
 }

 return 0;
}
