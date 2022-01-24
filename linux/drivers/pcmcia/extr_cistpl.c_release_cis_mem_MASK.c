#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/ * res; } ;
struct pcmcia_socket {int /*<<< orphan*/  ops_mutex; int /*<<< orphan*/ * cis_virt; TYPE_2__ cis_mem; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_mem_map ) (struct pcmcia_socket*,TYPE_2__*) ;} ;

/* Variables and functions */
 int MAP_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*,TYPE_2__*) ; 

void FUNC6(struct pcmcia_socket *s)
{
	FUNC2(&s->ops_mutex);
	if (s->cis_mem.flags & MAP_ACTIVE) {
		s->cis_mem.flags &= ~MAP_ACTIVE;
		s->ops->set_mem_map(s, &s->cis_mem);
		if (s->cis_mem.res) {
			FUNC4(s->cis_mem.res);
			FUNC1(s->cis_mem.res);
			s->cis_mem.res = NULL;
		}
		FUNC0(s->cis_virt);
		s->cis_virt = NULL;
	}
	FUNC3(&s->ops_mutex);
}