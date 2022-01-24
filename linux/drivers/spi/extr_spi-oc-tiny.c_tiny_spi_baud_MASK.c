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
struct tiny_spi {unsigned int baudwidth; int /*<<< orphan*/  freq; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct tiny_spi* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static unsigned int FUNC3(struct spi_device *spi, unsigned int hz)
{
	struct tiny_spi *hw = FUNC2(spi);

	return FUNC1(FUNC0(hw->freq, hz * 2), (1U << hw->baudwidth)) - 1;
}