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
typedef  int /*<<< orphan*/  uint ;
struct nvec_chip {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  ec_transfer; TYPE_1__* rx; scalar_t__ state; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ pos; scalar_t__* data; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ NVEC_BAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvec_chip*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct nvec_chip *nvec)
{
	if (nvec->rx->pos != FUNC5(nvec->rx)) {
		FUNC1(nvec->dev, "RX incomplete: Expected %u bytes, got %u\n",
			(uint)FUNC5(nvec->rx),
			(uint)nvec->rx->pos);

		FUNC3(nvec, nvec->rx);
		nvec->state = 0;

		/* Battery quirk - Often incomplete, and likes to crash */
		if (nvec->rx->data[0] == NVEC_BAT)
			FUNC0(&nvec->ec_transfer);

		return;
	}

	FUNC7(&nvec->rx_lock);

	/*
	 * Add the received data to the work list and move the ring buffer
	 * pointer to the next entry.
	 */
	FUNC2(&nvec->rx->node, &nvec->rx_data);

	FUNC8(&nvec->rx_lock);

	nvec->state = 0;

	if (!FUNC4(nvec->rx))
		FUNC0(&nvec->ec_transfer);

	FUNC6(&nvec->rx_work);
}