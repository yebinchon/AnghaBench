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
struct bcm_qspi {scalar_t__ bspi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSPI ; 
 int /*<<< orphan*/  BSPI_MAST_N_BOOT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_qspi*) ; 
 int FUNC1 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct bcm_qspi *qspi)
{
	if (!FUNC3(qspi))
		return;

	qspi->bspi_enabled = 0;
	if ((FUNC1(qspi, BSPI, BSPI_MAST_N_BOOT_CTRL) & 1))
		return;

	FUNC0(qspi);
	FUNC2(qspi, BSPI, BSPI_MAST_N_BOOT_CTRL, 1);
	FUNC4(1);
}