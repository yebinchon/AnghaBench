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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct dw_spi {int n_bytes; scalar_t__ rx; scalar_t__ len; scalar_t__ rx_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_SPI_DR ; 
 int /*<<< orphan*/  FUNC0 (struct dw_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_spi*) ; 

__attribute__((used)) static void FUNC2(struct dw_spi *dws)
{
	u32 max = FUNC1(dws);
	u16 rxw;

	while (max--) {
		rxw = FUNC0(dws, DW_SPI_DR);
		/* Care rx only if the transfer's original "rx" is not null */
		if (dws->rx_end - dws->len) {
			if (dws->n_bytes == 1)
				*(u8 *)(dws->rx) = rxw;
			else
				*(u16 *)(dws->rx) = rxw;
		}
		dws->rx += dws->n_bytes;
	}
}