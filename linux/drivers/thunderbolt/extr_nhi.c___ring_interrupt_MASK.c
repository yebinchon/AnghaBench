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
struct tb_ring {int /*<<< orphan*/  work; int /*<<< orphan*/  poll_data; int /*<<< orphan*/  (* start_poll ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tb_ring *ring)
{
	if (!ring->running)
		return;

	if (ring->start_poll) {
		FUNC0(ring, true);
		ring->start_poll(ring->poll_data);
	} else {
		FUNC1(&ring->work);
	}
}