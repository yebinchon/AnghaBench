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
struct mpc8xxx_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpc8xxx_spi*) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 struct mpc8xxx_spi* FUNC2 (struct spi_master*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *ofdev)
{
	struct spi_master *master = FUNC1(ofdev);
	struct mpc8xxx_spi *mpc8xxx_spi = FUNC2(master);

	FUNC0(mpc8xxx_spi);
	return 0;
}