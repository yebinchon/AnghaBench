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
struct bcm_qspi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSPI ; 
 int /*<<< orphan*/  BSPI_B0_CTRL ; 
 int /*<<< orphan*/  BSPI_B1_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bcm_qspi *qspi)
{
	FUNC0(qspi);
	/* Force rising edge for the b0/b1 'flush' field */
	FUNC1(qspi, BSPI, BSPI_B0_CTRL, 1);
	FUNC1(qspi, BSPI, BSPI_B1_CTRL, 1);
	FUNC1(qspi, BSPI, BSPI_B0_CTRL, 0);
	FUNC1(qspi, BSPI, BSPI_B1_CTRL, 0);
}