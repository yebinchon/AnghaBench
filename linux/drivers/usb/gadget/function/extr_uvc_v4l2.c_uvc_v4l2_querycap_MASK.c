#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct TYPE_6__ {TYPE_2__* config; } ;
struct uvc_device {TYPE_3__ func; } ;
struct usb_composite_dev {TYPE_1__* gadget; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct video_device* FUNC2 (struct file*) ; 
 struct uvc_device* FUNC3 (struct video_device*) ; 

__attribute__((used)) static int
FUNC4(struct file *file, void *fh, struct v4l2_capability *cap)
{
	struct video_device *vdev = FUNC2(file);
	struct uvc_device *uvc = FUNC3(vdev);
	struct usb_composite_dev *cdev = uvc->func.config->cdev;

	FUNC1(cap->driver, "g_uvc", sizeof(cap->driver));
	FUNC1(cap->card, cdev->gadget->name, sizeof(cap->card));
	FUNC1(cap->bus_info, FUNC0(&cdev->gadget->dev),
		sizeof(cap->bus_info));
	return 0;
}