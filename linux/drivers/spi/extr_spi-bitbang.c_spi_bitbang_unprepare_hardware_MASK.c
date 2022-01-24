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
struct spi_bitbang {int /*<<< orphan*/  lock; scalar_t__ busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct spi_bitbang* FUNC2 (struct spi_master*) ; 

__attribute__((used)) static int FUNC3(struct spi_master *spi)
{
	struct spi_bitbang	*bitbang;

	bitbang = FUNC2(spi);

	FUNC0(&bitbang->lock);
	bitbang->busy = 0;
	FUNC1(&bitbang->lock);

	return 0;
}