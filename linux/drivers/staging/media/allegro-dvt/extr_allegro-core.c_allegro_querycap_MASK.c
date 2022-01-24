#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct allegro_dev {TYPE_1__* plat_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* KBUILD_MODNAME ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct video_device* FUNC3 (struct file*) ; 
 struct allegro_dev* FUNC4 (struct video_device*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
			    struct v4l2_capability *cap)
{
	struct video_device *vdev = FUNC3(file);
	struct allegro_dev *dev = FUNC4(vdev);

	FUNC2(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
	FUNC2(cap->card, "Allegro DVT Video Encoder", sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
		 FUNC0(&dev->plat_dev->dev));

	return 0;
}