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
struct spi_bitbang {struct spi_master* master; } ;

/* Variables and functions */
 int FUNC0 (struct spi_bitbang*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_master*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct spi_bitbang *bitbang)
{
	struct spi_master *master = bitbang->master;
	int ret;

	ret = FUNC0(bitbang);
	if (ret)
		return ret;

	/* driver may get busy before register() returns, especially
	 * if someone registered boardinfo for devices
	 */
	ret = FUNC3(FUNC1(master));
	if (ret)
		FUNC2(master);

	return ret;
}