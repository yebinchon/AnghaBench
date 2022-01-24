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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct most_video_dev {TYPE_1__* iface; } ;
struct file {int dummy; } ;
struct comp_fh {struct most_video_dev* mdev; } ;
struct TYPE_2__ {char* description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			   struct v4l2_capability *cap)
{
	struct comp_fh *fh = priv;
	struct most_video_dev *mdev = fh->mdev;

	FUNC1(cap->driver, "v4l2_component", sizeof(cap->driver));
	FUNC1(cap->card, "MOST", sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info),
		 "%s", mdev->iface->description);
	return 0;
}