
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* ctrl; } ;
typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_2__ {int (* set_update_mode ) (int) ;} ;


 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int stub1 (int) ;

__attribute__((used)) static int omapfb_set_update_mode(struct omapfb_device *fbdev,
       enum omapfb_update_mode mode)
{
 int r;

 omapfb_rqueue_lock(fbdev);
 r = fbdev->ctrl->set_update_mode(mode);
 omapfb_rqueue_unlock(fbdev);

 return r;
}
