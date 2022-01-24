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
struct mite_ring {int /*<<< orphan*/  hw_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mite_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct mite_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mite_ring *ring)
{
	if (ring) {
		FUNC1(ring);
		FUNC2(ring->hw_dev);
		FUNC0(ring);
	}
}