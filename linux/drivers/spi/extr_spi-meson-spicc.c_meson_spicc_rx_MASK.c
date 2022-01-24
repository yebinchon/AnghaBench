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
struct meson_spicc_device {scalar_t__ base; scalar_t__ rx_remain; } ;

/* Variables and functions */
 scalar_t__ SPICC_RXDATA ; 
 int /*<<< orphan*/  FUNC0 (struct meson_spicc_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct meson_spicc_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct meson_spicc_device *spicc)
{
	/* Empty RX FIFO */
	while (spicc->rx_remain &&
	       FUNC1(spicc))
		FUNC0(spicc,
				FUNC2(spicc->base + SPICC_RXDATA));
}