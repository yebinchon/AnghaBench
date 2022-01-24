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
struct spi_mpc8xxx_cs {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_mpc8xxx_cs*) ; 
 struct spi_mpc8xxx_cs* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi)
{
	struct spi_mpc8xxx_cs *cs = FUNC1(spi);

	FUNC0(cs);
	FUNC2(spi, NULL);
}