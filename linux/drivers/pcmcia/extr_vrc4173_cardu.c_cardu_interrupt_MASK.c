#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int events; int /*<<< orphan*/  tq_work; int /*<<< orphan*/  event_lock; } ;
typedef  TYPE_1__ vrc4173_socket_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  cardu_bh ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int irq, void *dev_id)
{
	vrc4173_socket_t *socket = (vrc4173_socket_t *)dev_id;
	uint16_t events;

	FUNC0(&socket->tq_work, cardu_bh, socket);

	events = FUNC1(socket);
	if (events) {
		FUNC3(&socket->event_lock);
		socket->events |= events;
		FUNC4(&socket->event_lock);
		FUNC2(&socket->tq_work);
	}
}