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
struct zynqmp_qspi {int dummy; } ;
struct spi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GQSPI_EN_OFST ; 
 struct zynqmp_qspi* FUNC0 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC1 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct spi_master *master)
{
	struct zynqmp_qspi *xqspi = FUNC0(master);

	FUNC1(xqspi, GQSPI_EN_OFST, 0x0);
	return 0;
}