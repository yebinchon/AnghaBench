#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct allegro_dev {int /*<<< orphan*/  suballocator; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct allegro_dev*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct allegro_dev*) ; 
 int FUNC2 (struct allegro_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct allegro_dev *dev)
{
	int err;

	err = FUNC2(dev);
	if (err)
		FUNC3(&dev->v4l2_dev,
			  "mcu failed to enter sleep state\n");

	err = FUNC1(dev);
	if (err)
		FUNC3(&dev->v4l2_dev,
			  "failed to disable interrupts\n");

	FUNC0(dev, &dev->suballocator);

	return 0;
}