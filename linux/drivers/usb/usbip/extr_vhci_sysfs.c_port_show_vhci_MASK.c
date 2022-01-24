#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int status; int sockfd; } ;
struct vhci_device {int speed; int devid; TYPE_2__* udev; TYPE_1__ ud; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HUB_SPEED_HIGH ; 
 scalar_t__ VDEV_ST_USED ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static void FUNC2(char **out, int hub, int port, struct vhci_device *vdev)
{
	if (hub == HUB_SPEED_HIGH)
		*out += FUNC1(*out, "hs  %04u %03u ",
				      port, vdev->ud.status);
	else /* hub == HUB_SPEED_SUPER */
		*out += FUNC1(*out, "ss  %04u %03u ",
				      port, vdev->ud.status);

	if (vdev->ud.status == VDEV_ST_USED) {
		*out += FUNC1(*out, "%03u %08x ",
				      vdev->speed, vdev->devid);
		*out += FUNC1(*out, "%06u %s",
				      vdev->ud.sockfd,
				      FUNC0(&vdev->udev->dev));

	} else {
		*out += FUNC1(*out, "000 00000000 ");
		*out += FUNC1(*out, "000000 0-0");
	}

	*out += FUNC1(*out, "\n");
}