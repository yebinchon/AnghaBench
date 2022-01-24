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
struct sh_msiof_spi_priv {int /*<<< orphan*/  ctlr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTR_RXE ; 
 int /*<<< orphan*/  CTR_TFSE ; 
 int /*<<< orphan*/  CTR_TSCKE ; 
 int /*<<< orphan*/  CTR_TXE ; 
 int FUNC0 (struct sh_msiof_spi_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sh_msiof_spi_priv *p, void *rx_buf)
{
	bool slave = FUNC1(p->ctlr);
	int ret = 0;

	/* shut down frame, rx/tx and clock signals */
	if (!slave)
		ret = FUNC0(p, CTR_TFSE, 0);
	if (!ret)
		ret = FUNC0(p, CTR_TXE, 0);
	if (rx_buf && !ret)
		ret = FUNC0(p, CTR_RXE, 0);
	if (!ret && !slave)
		ret = FUNC0(p, CTR_TSCKE, 0);

	return ret;
}