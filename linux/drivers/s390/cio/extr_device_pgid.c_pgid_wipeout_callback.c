
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {scalar_t__ pgid_unknown; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;


 int verify_done (struct ccw_device*,int) ;
 int verify_start (struct ccw_device*) ;

__attribute__((used)) static void pgid_wipeout_callback(struct ccw_device *cdev, void *data, int rc)
{
 if (rc) {

  verify_done(cdev, rc);
  return;
 }




 cdev->private->flags.pgid_unknown = 0;
 verify_start(cdev);
}
