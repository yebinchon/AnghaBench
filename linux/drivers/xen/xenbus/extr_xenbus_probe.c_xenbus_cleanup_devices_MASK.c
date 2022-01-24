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
struct xb_find_info {char const* nodename; TYPE_1__* dev; } ;
struct bus_type {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bus_type*,int /*<<< orphan*/ *,struct xb_find_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const char *path, struct bus_type *bus)
{
	struct xb_find_info info = { .nodename = path };

	do {
		info.dev = NULL;
		FUNC0(bus, NULL, &info, cleanup_dev);
		if (info.dev) {
			FUNC1(&info.dev->dev);
			FUNC2(&info.dev->dev);
		}
	} while (info.dev);
}