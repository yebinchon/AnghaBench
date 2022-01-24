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
struct video_device {char* name; } ;
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct hantro_dev {TYPE_1__* dev; } ;
struct file {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {TYPE_2__* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct video_device* FUNC2 (struct file*) ; 
 struct hantro_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			   struct v4l2_capability *cap)
{
	struct hantro_dev *vpu = FUNC3(file);
	struct video_device *vdev = FUNC2(file);

	FUNC1(cap->driver, vpu->dev->driver->name, sizeof(cap->driver));
	FUNC1(cap->card, vdev->name, sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info), "platform: %s",
		 vpu->dev->driver->name);
	return 0;
}