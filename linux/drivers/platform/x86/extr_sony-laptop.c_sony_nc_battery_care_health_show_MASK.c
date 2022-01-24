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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* bcare_ctl ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
		struct device_attribute *attr, char *buffer)
{
	ssize_t count = 0;
	unsigned int health;

	if (FUNC1(bcare_ctl->handle, 0x0200, &health))
		return -EIO;

	count = FUNC0(buffer, PAGE_SIZE, "%d\n", health & 0xff);

	return count;
}