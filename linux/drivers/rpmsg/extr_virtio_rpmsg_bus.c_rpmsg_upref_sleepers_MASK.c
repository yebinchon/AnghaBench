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
struct virtproc_info {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  svq; int /*<<< orphan*/  sleepers; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct virtproc_info *vrp)
{
	/* support multiple concurrent senders */
	FUNC1(&vrp->tx_lock);

	/* are we the first sleeping context waiting for tx buffers ? */
	if (FUNC0(&vrp->sleepers) == 1)
		/* enable "tx-complete" interrupts before dozing off */
		FUNC3(vrp->svq);

	FUNC2(&vrp->tx_lock);
}