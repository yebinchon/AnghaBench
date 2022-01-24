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
struct xenbus_device {int /*<<< orphan*/  down; } ;

/* Variables and functions */
 int /*<<< orphan*/  XenbusStateClosed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct xenbus_device *dev)
{
	FUNC1(dev, XenbusStateClosed);
	FUNC0(&dev->down);
	return 0;
}