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
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; } ;
struct spi_clps711x_data {int /*<<< orphan*/  syscon; } ;

/* Variables and functions */
 int SPI_CPHA ; 
 int /*<<< orphan*/  SYSCON3_ADCCKNSEN ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spi_clps711x_data* FUNC1 (struct spi_master*) ; 

__attribute__((used)) static int FUNC2(struct spi_master *master,
					struct spi_message *msg)
{
	struct spi_clps711x_data *hw = FUNC1(master);
	struct spi_device *spi = msg->spi;

	/* Setup mode for transfer */
	return FUNC0(hw->syscon, SYSCON_OFFSET, SYSCON3_ADCCKNSEN,
				  (spi->mode & SPI_CPHA) ?
				  SYSCON3_ADCCKNSEN : 0);
}