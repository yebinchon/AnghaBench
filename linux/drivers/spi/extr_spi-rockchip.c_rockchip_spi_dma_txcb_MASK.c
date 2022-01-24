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
struct spi_master {int dummy; } ;
struct rockchip_spi {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int RXDMA ; 
 int /*<<< orphan*/  TXDMA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_spi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_master*) ; 
 struct rockchip_spi* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_spi*) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct spi_master *master = data;
	struct rockchip_spi *rs = FUNC3(master);
	int state = FUNC0(TXDMA, &rs->state);

	if (state & RXDMA)
		return;

	/* Wait until the FIFO data completely. */
	FUNC4(rs);

	FUNC1(rs, false);
	FUNC2(master);
}