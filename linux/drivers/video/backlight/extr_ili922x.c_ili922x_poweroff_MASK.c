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
 int /*<<< orphan*/  REG_POWER_CONTROL_1 ; 
 int /*<<< orphan*/  REG_POWER_CONTROL_2 ; 
 int /*<<< orphan*/  REG_POWER_CONTROL_3 ; 
 int /*<<< orphan*/  REG_POWER_CONTROL_4 ; 
 int FUNC0 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	int ret;

	/* Power off */
	ret = FUNC0(spi, REG_POWER_CONTROL_1, 0x0000);
	FUNC2(10000, 10500);
	ret += FUNC0(spi, REG_POWER_CONTROL_2, 0x0000);
	ret += FUNC0(spi, REG_POWER_CONTROL_3, 0x0000);
	FUNC1(40);
	ret += FUNC0(spi, REG_POWER_CONTROL_4, 0x0000);
	FUNC1(40);

	return ret;
}