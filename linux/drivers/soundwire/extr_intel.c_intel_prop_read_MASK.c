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
struct sdw_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdw_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdw_bus*) ; 

__attribute__((used)) static int FUNC2(struct sdw_bus *bus)
{
	/* Initialize with default handler to read all DisCo properties */
	FUNC1(bus);

	/* read Intel-specific properties */
	FUNC0(bus);

	return 0;
}