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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct rockchip_spi {int n_bytes; scalar_t__ tx; scalar_t__ regs; int /*<<< orphan*/  tx_left; scalar_t__ fifo_len; } ;

/* Variables and functions */
 scalar_t__ ROCKCHIP_SPI_TXDR ; 
 scalar_t__ ROCKCHIP_SPI_TXFLR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct rockchip_spi *rs)
{
	u32 tx_free = rs->fifo_len - FUNC1(rs->regs + ROCKCHIP_SPI_TXFLR);
	u32 words = FUNC0(rs->tx_left, tx_free);

	rs->tx_left -= words;
	for (; words; words--) {
		u32 txw;

		if (rs->n_bytes == 1)
			txw = *(u8 *)rs->tx;
		else
			txw = *(u16 *)rs->tx;

		FUNC2(txw, rs->regs + ROCKCHIP_SPI_TXDR);
		rs->tx += rs->n_bytes;
	}
}