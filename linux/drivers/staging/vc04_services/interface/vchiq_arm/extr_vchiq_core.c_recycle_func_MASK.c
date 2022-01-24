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
struct vchiq_state {int /*<<< orphan*/  recycle_event; struct vchiq_shared_state* local; } ;
struct vchiq_shared_state {int /*<<< orphan*/  recycle; } ;
typedef  int /*<<< orphan*/  BITSET_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VCHIQ_MAX_SERVICES ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vchiq_state*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void *v)
{
	struct vchiq_state *state = v;
	struct vchiq_shared_state *local = state->local;
	BITSET_T *found;
	size_t length;

	length = sizeof(*found) * FUNC0(VCHIQ_MAX_SERVICES);

	found = FUNC1(FUNC0(VCHIQ_MAX_SERVICES), sizeof(*found),
			      GFP_KERNEL);
	if (!found)
		return -ENOMEM;

	while (1) {
		FUNC3(&state->recycle_event, &local->recycle);

		FUNC2(state, found, length);
	}
	return 0;
}