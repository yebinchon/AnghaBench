
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int (* cleanup ) () ;} ;


 int stub1 () ;

__attribute__((used)) static void ctrl_cleanup(struct omapfb_device *fbdev)
{
 fbdev->ctrl->cleanup();
}
