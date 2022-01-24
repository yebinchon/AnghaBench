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
struct of_device_id {void const* data; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 struct of_device_id* FUNC0 (int /*<<< orphan*/ ,struct device const*) ; 

const void *FUNC1(const struct device *dev)
{
	const struct of_device_id *match;

	match = FUNC0(dev->driver->of_match_table, dev);
	if (!match)
		return NULL;

	return match->data;
}