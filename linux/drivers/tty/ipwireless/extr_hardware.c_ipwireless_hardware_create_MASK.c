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
struct ipw_hardware {int irq; int initializing; int tx_ready; unsigned short last_memtx_serial; int /*<<< orphan*/  setup_timer; int /*<<< orphan*/  work_rx; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/ * tx_queue; scalar_t__ rx_pool_size; scalar_t__ rx_bytes_queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NL_NUM_OF_PRIORITIES ; 
 int /*<<< orphan*/  ipw_receive_data_work ; 
 int /*<<< orphan*/  ipwireless_do_tasklet ; 
 int /*<<< orphan*/  ipwireless_setup_timer ; 
 struct ipw_hardware* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ipw_hardware *FUNC6(void)
{
	int i;
	struct ipw_hardware *hw =
		FUNC2(sizeof(struct ipw_hardware), GFP_KERNEL);

	if (!hw)
		return NULL;

	hw->irq = -1;
	hw->initializing = 1;
	hw->tx_ready = 1;
	hw->rx_bytes_queued = 0;
	hw->rx_pool_size = 0;
	hw->last_memtx_serial = (unsigned short) 0xffff;
	for (i = 0; i < NL_NUM_OF_PRIORITIES; i++)
		FUNC0(&hw->tx_queue[i]);

	FUNC0(&hw->rx_queue);
	FUNC0(&hw->rx_pool);
	FUNC3(&hw->lock);
	FUNC4(&hw->tasklet, ipwireless_do_tasklet, (unsigned long) hw);
	FUNC1(&hw->work_rx, ipw_receive_data_work);
	FUNC5(&hw->setup_timer, ipwireless_setup_timer, 0);

	return hw;
}