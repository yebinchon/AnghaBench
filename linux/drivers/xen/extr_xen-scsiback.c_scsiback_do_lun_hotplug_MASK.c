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
struct vscsibk_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (struct vscsibk_info*,int,char*) ; 
 char** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct vscsibk_info *info, int op)
{
	int i;
	char **dir;
	unsigned int ndir = 0;

	dir = FUNC3(XBT_NIL, info->dev->nodename, "vscsi-devs",
			       &ndir);
	if (FUNC0(dir))
		return;

	for (i = 0; i < ndir; i++)
		FUNC2(info, op, dir[i]);

	FUNC1(dir);
}