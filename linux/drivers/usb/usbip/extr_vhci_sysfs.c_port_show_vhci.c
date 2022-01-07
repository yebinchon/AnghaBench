
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int sockfd; } ;
struct vhci_device {int speed; int devid; TYPE_2__* udev; TYPE_1__ ud; } ;
struct TYPE_4__ {int dev; } ;


 int HUB_SPEED_HIGH ;
 scalar_t__ VDEV_ST_USED ;
 char* dev_name (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void port_show_vhci(char **out, int hub, int port, struct vhci_device *vdev)
{
 if (hub == HUB_SPEED_HIGH)
  *out += sprintf(*out, "hs  %04u %03u ",
          port, vdev->ud.status);
 else
  *out += sprintf(*out, "ss  %04u %03u ",
          port, vdev->ud.status);

 if (vdev->ud.status == VDEV_ST_USED) {
  *out += sprintf(*out, "%03u %08x ",
          vdev->speed, vdev->devid);
  *out += sprintf(*out, "%06u %s",
          vdev->ud.sockfd,
          dev_name(&vdev->udev->dev));

 } else {
  *out += sprintf(*out, "000 00000000 ");
  *out += sprintf(*out, "000000 0-0");
 }

 *out += sprintf(*out, "\n");
}
