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
struct spi_controller {int bus_lock_flag; int /*<<< orphan*/  bus_lock_spinlock; int /*<<< orphan*/  bus_lock_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct spi_controller *ctlr)
{
	unsigned long flags;

	FUNC0(&ctlr->bus_lock_mutex);

	FUNC1(&ctlr->bus_lock_spinlock, flags);
	ctlr->bus_lock_flag = 1;
	FUNC2(&ctlr->bus_lock_spinlock, flags);

	/* mutex remains locked until spi_bus_unlock is called */

	return 0;
}