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
struct sdw_bus {int link_id; int /*<<< orphan*/  debugfs; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdw_debugfs_root ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

void FUNC2(struct sdw_bus *bus)
{
	char name[16];

	if (!sdw_debugfs_root)
		return;

	/* create the debugfs master-N */
	FUNC1(name, sizeof(name), "master-%d", bus->link_id);
	bus->debugfs = FUNC0(name, sdw_debugfs_root);
}