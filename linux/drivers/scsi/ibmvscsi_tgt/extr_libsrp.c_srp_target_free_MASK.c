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
struct srp_target {int /*<<< orphan*/  iu_queue; int /*<<< orphan*/  srp_iu_size; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct srp_target *target)
{
	FUNC0(target->dev, NULL);
	FUNC2(target->dev, target->rx_ring, target->rx_ring_size,
		      target->srp_iu_size);
	FUNC1(&target->iu_queue);
}