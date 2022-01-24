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
struct tb_tunnel {int npaths; TYPE_1__** paths; } ;
struct TYPE_2__ {int /*<<< orphan*/  activated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

bool FUNC2(struct tb_tunnel *tunnel)
{
	int i;

	for (i = 0; i < tunnel->npaths; i++) {
		FUNC0(!tunnel->paths[i]->activated);
		if (FUNC1(tunnel->paths[i]))
			return true;
	}

	return false;
}