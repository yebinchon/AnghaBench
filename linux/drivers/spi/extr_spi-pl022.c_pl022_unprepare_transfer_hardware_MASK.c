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
struct pl022 {int /*<<< orphan*/  virtbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SSP_CR1_MASK_SSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct pl022* FUNC2 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_master *master)
{
	struct pl022 *pl022 = FUNC2(master);

	/* nothing more to do - disable spi/ssp and power off */
	FUNC3((FUNC1(FUNC0(pl022->virtbase)) &
		(~SSP_CR1_MASK_SSE)), FUNC0(pl022->virtbase));

	return 0;
}