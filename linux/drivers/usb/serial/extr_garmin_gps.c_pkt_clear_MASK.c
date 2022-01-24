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
struct garmin_packet {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {scalar_t__ next; } ;
struct garmin_data {int /*<<< orphan*/  lock; TYPE_1__ pktlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct garmin_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct garmin_data *garmin_data_p)
{
	unsigned long flags;
	struct garmin_packet *result = NULL;

	FUNC3(&garmin_data_p->lock, flags);
	while (!FUNC2(&garmin_data_p->pktlist)) {
		result = (struct garmin_packet *)garmin_data_p->pktlist.next;
		FUNC1(&result->list);
		FUNC0(result);
	}
	FUNC4(&garmin_data_p->lock, flags);
}