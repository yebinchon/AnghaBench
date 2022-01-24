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
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * olpc_ec ; 
 int /*<<< orphan*/ * olpc_xo175_ec_power_off ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi)
{
	if (pm_power_off == olpc_xo175_ec_power_off)
		pm_power_off = NULL;

	FUNC1(spi);

	FUNC0(olpc_ec);
	olpc_ec = NULL;

	return 0;
}