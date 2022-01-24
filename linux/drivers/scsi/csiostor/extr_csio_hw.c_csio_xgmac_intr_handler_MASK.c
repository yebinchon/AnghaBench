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
typedef  int uint32_t ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_PORT_INT_CAUSE_A ; 
 int RXFIFO_PRTY_ERR_F ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int TXFIFO_PRTY_ERR_F ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int FUNC3 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct csio_hw *hw, int port)
{
	uint32_t v = FUNC3(hw, FUNC0(port, MAC_PORT_INT_CAUSE_A));

	v &= TXFIFO_PRTY_ERR_F | RXFIFO_PRTY_ERR_F;
	if (!v)
		return;

	if (v & TXFIFO_PRTY_ERR_F)
		FUNC1(hw, "XGMAC %d Tx FIFO parity error\n", port);
	if (v & RXFIFO_PRTY_ERR_F)
		FUNC1(hw, "XGMAC %d Rx FIFO parity error\n", port);
	FUNC4(hw, v, FUNC0(port, MAC_PORT_INT_CAUSE_A));
	FUNC2(hw);
}