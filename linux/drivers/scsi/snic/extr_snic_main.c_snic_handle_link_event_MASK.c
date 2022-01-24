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
struct snic {int /*<<< orphan*/  link_work; int /*<<< orphan*/  snic_lock; scalar_t__ stop_link_events; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* snic_glob ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct snic *snic)
{
	unsigned long flags;

	FUNC1(&snic->snic_lock, flags);
	if (snic->stop_link_events) {
		FUNC2(&snic->snic_lock, flags);

		return;
	}
	FUNC2(&snic->snic_lock, flags);

	FUNC0(snic_glob->event_q, &snic->link_work);
}