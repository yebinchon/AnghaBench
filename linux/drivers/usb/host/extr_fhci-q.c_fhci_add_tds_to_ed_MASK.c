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
struct td {int /*<<< orphan*/  node; } ;
struct ed {struct td* td_head; int /*<<< orphan*/  td_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct ed *ed, struct td **td_list, int number)
{
	int i;

	for (i = 0; i < number; i++) {
		struct td *td = td_list[i];
		FUNC0(&td->node, &ed->td_list);
	}
	if (ed->td_head == NULL)
		ed->td_head = td_list[0];
}