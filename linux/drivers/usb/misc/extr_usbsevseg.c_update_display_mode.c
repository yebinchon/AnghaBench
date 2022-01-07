
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_sevsegdev {int shadow_power; int mode_msb; TYPE_1__* udev; scalar_t__ mode_lsb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,scalar_t__,int *,int ,int) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static void update_display_mode(struct usb_sevsegdev *mydev)
{
 int rc;

 if(mydev->shadow_power != 1)
  return;

 rc = usb_control_msg(mydev->udev,
   usb_sndctrlpipe(mydev->udev, 0),
   0x12,
   0x48,
   (82 * 0x100) + 10,
   (mydev->mode_msb * 0x100) + mydev->mode_lsb,
   ((void*)0),
   0,
   2000);

 if (rc < 0)
  dev_dbg(&mydev->udev->dev, "mode retval = %d\n", rc);
}
