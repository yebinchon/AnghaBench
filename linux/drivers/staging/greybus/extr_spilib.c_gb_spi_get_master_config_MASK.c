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
typedef  int /*<<< orphan*/  u16 ;
struct gb_spilib {void* max_speed_hz; void* min_speed_hz; int /*<<< orphan*/  num_chipselect; void* bits_per_word_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  connection; } ;
struct gb_spi_master_config_response {int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  min_speed_hz; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  response ;

/* Variables and functions */
 int /*<<< orphan*/  GB_SPI_TYPE_MASTER_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_spi_master_config_response*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gb_spilib *spi)
{
	struct gb_spi_master_config_response response;
	u16 mode, flags;
	int ret;

	ret = FUNC0(spi->connection, GB_SPI_TYPE_MASTER_CONFIG,
				NULL, 0, &response, sizeof(response));
	if (ret < 0)
		return ret;

	mode = FUNC3(response.mode);
	spi->mode = FUNC2(mode);

	flags = FUNC3(response.flags);
	spi->flags = FUNC1(flags);

	spi->bits_per_word_mask = FUNC4(response.bits_per_word_mask);
	spi->num_chipselect = response.num_chipselect;

	spi->min_speed_hz = FUNC4(response.min_speed_hz);
	spi->max_speed_hz = FUNC4(response.max_speed_hz);

	return 0;
}