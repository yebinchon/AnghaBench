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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ sclp_read_req ; 
 scalar_t__ sclp_reading_state ; 
 scalar_t__ sclp_reading_state_idle ; 
 scalar_t__ sclp_reading_state_reading ; 
 int /*<<< orphan*/  sclp_req_queue ; 

__attribute__((used)) static void
FUNC2(void)
{
	if (sclp_reading_state == sclp_reading_state_idle) {
		sclp_reading_state = sclp_reading_state_reading;
		FUNC0();
		/* Add request to head of queue */
		FUNC1(&sclp_read_req.list, &sclp_req_queue);
	}
}