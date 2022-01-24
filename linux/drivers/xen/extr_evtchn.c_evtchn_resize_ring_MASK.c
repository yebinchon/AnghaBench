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
struct per_user_data {int nr_evtchns; int ring_size; int /*<<< orphan*/  ring_cons_mutex; int /*<<< orphan*/  ring_prod_lock; int /*<<< orphan*/ * ring; } ;
typedef  int /*<<< orphan*/  evtchn_port_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct per_user_data *u)
{
	unsigned int new_size;
	evtchn_port_t *new_ring, *old_ring;

	/*
	 * Ensure the ring is large enough to capture all possible
	 * events. i.e., one free slot for each bound event.
	 */
	if (u->nr_evtchns <= u->ring_size)
		return 0;

	if (u->ring_size == 0)
		new_size = 64;
	else
		new_size = 2 * u->ring_size;

	new_ring = FUNC1(new_size, sizeof(*new_ring), GFP_KERNEL);
	if (!new_ring)
		return -ENOMEM;

	old_ring = u->ring;

	/*
	 * Access to the ring contents is serialized by either the
	 * prod /or/ cons lock so take both when resizing.
	 */
	FUNC3(&u->ring_cons_mutex);
	FUNC5(&u->ring_prod_lock);

	/*
	 * Copy the old ring contents to the new ring.
	 *
	 * To take care of wrapping, a full ring, and the new index
	 * pointing into the second half, simply copy the old contents
	 * twice.
	 *
	 * +---------+    +------------------+
	 * |34567  12| -> |34567  1234567  12|
	 * +-----p-c-+    +-------c------p---+
	 */
	FUNC2(new_ring, old_ring, u->ring_size * sizeof(*u->ring));
	FUNC2(new_ring + u->ring_size, old_ring,
	       u->ring_size * sizeof(*u->ring));

	u->ring = new_ring;
	u->ring_size = new_size;

	FUNC6(&u->ring_prod_lock);
	FUNC4(&u->ring_cons_mutex);

	FUNC0(old_ring);

	return 0;
}