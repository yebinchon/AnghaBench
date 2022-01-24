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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cvm_oct_poll_queue_stopping ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cvm_oct_rx_refill_work ; 
 int num_packet_buffers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct work_struct *work)
{
	/*
	 * FPA 0 may have been drained, try to refill it if we need
	 * more than num_packet_buffers / 2, otherwise normal receive
	 * processing will refill it.  If it were drained, no packets
	 * could be received so cvm_oct_napi_poll would never be
	 * invoked to do the refill.
	 */
	FUNC1(num_packet_buffers / 2);

	if (!FUNC0(&cvm_oct_poll_queue_stopping))
		FUNC2(&cvm_oct_rx_refill_work, HZ);
}