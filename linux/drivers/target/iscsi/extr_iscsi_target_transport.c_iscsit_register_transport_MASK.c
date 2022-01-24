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
struct iscsit_transport {int /*<<< orphan*/  name; int /*<<< orphan*/  t_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_transport_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transport_mutex ; 

int FUNC5(struct iscsit_transport *t)
{
	FUNC0(&t->t_node);

	FUNC2(&transport_mutex);
	FUNC1(&t->t_node, &g_transport_list);
	FUNC3(&transport_mutex);

	FUNC4("Registered iSCSI transport: %s\n", t->name);

	return 0;
}