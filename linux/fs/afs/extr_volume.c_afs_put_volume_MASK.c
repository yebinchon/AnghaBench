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
struct afs_volume {int /*<<< orphan*/  usage; int /*<<< orphan*/  name; } ;
struct afs_cell {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct afs_volume*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct afs_cell *cell, struct afs_volume *volume)
{
	if (volume) {
		FUNC0("%s", volume->name);

		if (FUNC2(&volume->usage))
			FUNC1(cell->net, volume);
	}
}