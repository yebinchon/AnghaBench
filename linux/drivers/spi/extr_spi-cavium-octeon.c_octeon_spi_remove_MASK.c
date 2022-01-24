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
struct platform_device {int dummy; } ;
struct octeon_spi {scalar_t__ register_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct octeon_spi*) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 struct octeon_spi* FUNC2 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct spi_master *master = FUNC1(pdev);
	struct octeon_spi *p = FUNC2(master);

	/* Clear the CSENA* and put everything in a known state. */
	FUNC3(0, p->register_base + FUNC0(p));

	return 0;
}