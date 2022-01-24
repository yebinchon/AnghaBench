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
struct TYPE_2__ {scalar_t__ activated; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct tb_tunnel*,char*) ; 
 int FUNC1 (struct tb_tunnel*) ; 

int FUNC2(struct tb_tunnel *tunnel)
{
	int i;

	for (i = 0; i < tunnel->npaths; i++) {
		if (tunnel->paths[i]->activated) {
			FUNC0(tunnel,
				       "trying to activate an already activated tunnel\n");
			return -EINVAL;
		}
	}

	return FUNC1(tunnel);
}