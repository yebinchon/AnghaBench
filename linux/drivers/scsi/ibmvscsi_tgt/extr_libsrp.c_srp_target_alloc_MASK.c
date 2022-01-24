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
struct srp_target {size_t srp_iu_size; size_t rx_ring_size; int /*<<< orphan*/  rx_ring; struct device* dev; int /*<<< orphan*/  iu_queue; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct srp_target*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,size_t,size_t) ; 

int FUNC5(struct srp_target *target, struct device *dev,
		     size_t nr, size_t iu_size)
{
	int err;

	FUNC1(&target->lock);

	target->dev = dev;

	target->srp_iu_size = iu_size;
	target->rx_ring_size = nr;
	target->rx_ring = FUNC3(target->dev, nr, iu_size);
	if (!target->rx_ring)
		return -ENOMEM;
	err = FUNC2(&target->iu_queue, nr, target->rx_ring);
	if (err)
		goto free_ring;

	FUNC0(target->dev, target);
	return 0;

free_ring:
	FUNC4(target->dev, target->rx_ring, nr, iu_size);
	return -ENOMEM;
}