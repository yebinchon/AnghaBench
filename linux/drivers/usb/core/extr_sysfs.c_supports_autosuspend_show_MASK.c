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
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ supports_autosuspend; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	int s;

	s = FUNC0(dev);
	if (s < 0)
		return -EINTR;
	/* Devices will be autosuspended even when an interface isn't claimed */
	s = (!dev->driver || FUNC3(dev->driver)->supports_autosuspend);
	FUNC1(dev);

	return FUNC2(buf, "%u\n", s);
}