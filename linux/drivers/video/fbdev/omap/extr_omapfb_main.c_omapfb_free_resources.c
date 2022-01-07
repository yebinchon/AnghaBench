
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int region_cnt; } ;
struct omapfb_device {int dev; TYPE_2__* panel; int * fb_info; TYPE_1__ mem_desc; } ;
struct TYPE_5__ {int (* cleanup ) (TYPE_2__*) ;int (* disable ) (TYPE_2__*) ;} ;


 int BUG () ;

 int OMAPFB_UPDATE_DISABLED ;
 int ctrl_cleanup (struct omapfb_device*) ;
 int dev_set_drvdata (int ,int *) ;
 int kfree (struct omapfb_device*) ;
 int omapfb_set_update_mode (struct omapfb_device*,int ) ;
 int omapfb_unregister_sysfs (struct omapfb_device*) ;
 int planes_cleanup (struct omapfb_device*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int unregister_framebuffer (int ) ;

__attribute__((used)) static void omapfb_free_resources(struct omapfb_device *fbdev, int state)
{
 int i;

 switch (state) {
 case 128:
  for (i = 0; i < fbdev->mem_desc.region_cnt; i++)
   unregister_framebuffer(fbdev->fb_info[i]);

 case 7:
  omapfb_unregister_sysfs(fbdev);

 case 6:
  if (fbdev->panel->disable)
   fbdev->panel->disable(fbdev->panel);

 case 5:
  omapfb_set_update_mode(fbdev, OMAPFB_UPDATE_DISABLED);

 case 4:
  planes_cleanup(fbdev);

 case 3:
  ctrl_cleanup(fbdev);

 case 2:
  if (fbdev->panel->cleanup)
   fbdev->panel->cleanup(fbdev->panel);

 case 1:
  dev_set_drvdata(fbdev->dev, ((void*)0));
  kfree(fbdev);
 case 0:

  break;
 default:
  BUG();
 }
}
