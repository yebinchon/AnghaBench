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
struct meson_spicc_device {scalar_t__ base; scalar_t__ tx_remain; } ;

/* Variables and functions */
 scalar_t__ SPICC_TXDATA ; 
 int /*<<< orphan*/  FUNC0 (struct meson_spicc_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_spicc_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct meson_spicc_device *spicc)
{
	/* Fill Up TX FIFO */
	while (spicc->tx_remain &&
	       !FUNC1(spicc))
		FUNC2(FUNC0(spicc),
			       spicc->base + SPICC_TXDATA);
}