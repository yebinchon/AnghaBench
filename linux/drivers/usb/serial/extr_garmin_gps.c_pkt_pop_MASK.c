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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct garmin_packet *FUNC4(struct garmin_data *garmin_data_p)
{
	unsigned long flags;
	struct garmin_packet *result = NULL;

	FUNC2(&garmin_data_p->lock, flags);
	if (!FUNC1(&garmin_data_p->pktlist)) {
		result = (struct garmin_packet *)garmin_data_p->pktlist.next;
		FUNC0(&result->list);
	}
	FUNC3(&garmin_data_p->lock, flags);
	return result;
}