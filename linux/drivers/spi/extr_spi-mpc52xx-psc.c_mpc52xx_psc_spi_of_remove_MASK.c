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
struct mpc52xx_psc_spi {scalar_t__ psc; int /*<<< orphan*/  irq; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mpc52xx_psc_spi*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct spi_master* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mpc52xx_psc_spi* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_master*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *op)
{
	struct spi_master *master = FUNC4(FUNC3(op));
	struct mpc52xx_psc_spi *mps = FUNC5(master);

	FUNC0(&mps->work);
	FUNC7(master);
	FUNC1(mps->irq, mps);
	if (mps->psc)
		FUNC2(mps->psc);
	FUNC6(master);

	return 0;
}