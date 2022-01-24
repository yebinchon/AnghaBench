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
struct spi_engine_program {int dummy; } ;
struct spi_device {int /*<<< orphan*/  chip_select; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_engine_program*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_engine_program *p, bool dry,
		struct spi_device *spi, bool assert)
{
	unsigned int mask = 0xff;

	if (assert)
		mask ^= FUNC0(spi->chip_select);

	FUNC2(p, dry, FUNC1(1, mask));
}