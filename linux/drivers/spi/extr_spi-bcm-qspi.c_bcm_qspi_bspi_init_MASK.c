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
typedef  int u32 ;
struct bcm_qspi {int bspi_maj_rev; int bspi_min_rev; int bspi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSPI ; 
 int /*<<< orphan*/  BSPI_B0_CTRL ; 
 int /*<<< orphan*/  BSPI_B1_CTRL ; 
 int /*<<< orphan*/  BSPI_BSPI_XOR_ENABLE ; 
 int /*<<< orphan*/  BSPI_BSPI_XOR_VALUE ; 
 int /*<<< orphan*/  BSPI_REVISION_ID ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_qspi*) ; 
 int FUNC2 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct bcm_qspi *qspi)
{
	u32 val = 0;

	val = FUNC2(qspi, BSPI, BSPI_REVISION_ID);
	qspi->bspi_maj_rev = (val >> 8) & 0xff;
	qspi->bspi_min_rev = val & 0xff;
	if (!(FUNC0(qspi))) {
		/* Force mapping of BSPI address -> flash offset */
		FUNC3(qspi, BSPI, BSPI_BSPI_XOR_VALUE, 0);
		FUNC3(qspi, BSPI, BSPI_BSPI_XOR_ENABLE, 1);
	}
	qspi->bspi_enabled = 1;
	FUNC1(qspi);
	FUNC3(qspi, BSPI, BSPI_B0_CTRL, 0);
	FUNC3(qspi, BSPI, BSPI_B1_CTRL, 0);
}