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
struct TYPE_2__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * bus; } ;
struct maple_device {int port; int unit; int /*<<< orphan*/  maple_wait; TYPE_1__ dev; int /*<<< orphan*/  mq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct maple_device*) ; 
 struct maple_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct maple_device*) ; 
 int /*<<< orphan*/  maple_bus ; 
 int /*<<< orphan*/  maple_bus_type ; 

__attribute__((used)) static struct maple_device *FUNC4(int port, int unit)
{
	struct maple_device *mdev;

	/* zero this out to avoid kobj subsystem
	* thinking it has already been registered */

	mdev = FUNC2(sizeof(*mdev), GFP_KERNEL);
	if (!mdev)
		return NULL;

	mdev->port = port;
	mdev->unit = unit;

	mdev->mq = FUNC3(mdev);

	if (!mdev->mq) {
		FUNC1(mdev);
		return NULL;
	}
	mdev->dev.bus = &maple_bus_type;
	mdev->dev.parent = &maple_bus;
	FUNC0(&mdev->maple_wait);
	return mdev;
}