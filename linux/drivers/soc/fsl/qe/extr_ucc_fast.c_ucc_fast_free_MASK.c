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
struct ucc_fast_private {scalar_t__ uf_regs; scalar_t__ ucc_fast_rx_virtual_fifo_base_offset; scalar_t__ ucc_fast_tx_virtual_fifo_base_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ucc_fast_private*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct ucc_fast_private * uccf)
{
	if (!uccf)
		return;

	if (uccf->ucc_fast_tx_virtual_fifo_base_offset)
		FUNC2(uccf->ucc_fast_tx_virtual_fifo_base_offset);

	if (uccf->ucc_fast_rx_virtual_fifo_base_offset)
		FUNC2(uccf->ucc_fast_rx_virtual_fifo_base_offset);

	if (uccf->uf_regs)
		FUNC0(uccf->uf_regs);

	FUNC1(uccf);
}