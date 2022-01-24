#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* platform_device ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(void)
{
	if (platform_device) {
		FUNC0(&platform_device->dev);
		FUNC2(platform_device);
		FUNC1((unsigned long)buffer);
	}
}