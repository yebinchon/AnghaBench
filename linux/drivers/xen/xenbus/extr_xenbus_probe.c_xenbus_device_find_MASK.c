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
struct xenbus_device {int dummy; } ;
struct xb_find_info {char const* nodename; struct xenbus_device* dev; } ;
struct bus_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bus_type*,int /*<<< orphan*/ *,struct xb_find_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_dev ; 

__attribute__((used)) static struct xenbus_device *FUNC1(const char *nodename,
						struct bus_type *bus)
{
	struct xb_find_info info = { .dev = NULL, .nodename = nodename };

	FUNC0(bus, NULL, &info, cmp_dev);
	return info.dev;
}