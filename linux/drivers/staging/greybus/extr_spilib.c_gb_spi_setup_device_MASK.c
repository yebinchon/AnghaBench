#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct spi_master {int /*<<< orphan*/  bus_num; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct spi_board_info {int /*<<< orphan*/  max_speed_hz; scalar_t__ chip_select; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  mode; int /*<<< orphan*/  modalias; TYPE_1__ member_0; } ;
struct gb_spilib {int /*<<< orphan*/  connection; } ;
struct gb_spi_device_config_response {scalar_t__ device_type; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
struct gb_spi_device_config_request {scalar_t__ chip_select; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GB_SPI_SPI_DEV ; 
 scalar_t__ GB_SPI_SPI_MODALIAS ; 
 scalar_t__ GB_SPI_SPI_NOR ; 
 int /*<<< orphan*/  GB_SPI_TYPE_DEVICE_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_spi_device_config_request*,int,struct gb_spi_device_config_response*,int) ; 
 struct spi_master* FUNC1 (struct gb_spilib*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct spi_device* FUNC5 (struct spi_master*,struct spi_board_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct gb_spilib *spi, u8 cs)
{
	struct spi_master *master = FUNC1(spi);
	struct gb_spi_device_config_request request;
	struct gb_spi_device_config_response response;
	struct spi_board_info spi_board = { 0 };
	struct spi_device *spidev;
	int ret;
	u8 dev_type;

	request.chip_select = cs;

	ret = FUNC0(spi->connection, GB_SPI_TYPE_DEVICE_CONFIG,
				&request, sizeof(request),
				&response, sizeof(response));
	if (ret < 0)
		return ret;

	dev_type = response.device_type;

	if (dev_type == GB_SPI_SPI_DEV)
		FUNC6(spi_board.modalias, "spidev",
			sizeof(spi_board.modalias));
	else if (dev_type == GB_SPI_SPI_NOR)
		FUNC6(spi_board.modalias, "spi-nor",
			sizeof(spi_board.modalias));
	else if (dev_type == GB_SPI_SPI_MODALIAS)
		FUNC4(spi_board.modalias, response.name,
		       sizeof(spi_board.modalias));
	else
		return -EINVAL;

	spi_board.mode		= FUNC2(response.mode);
	spi_board.bus_num	= master->bus_num;
	spi_board.chip_select	= cs;
	spi_board.max_speed_hz	= FUNC3(response.max_speed_hz);

	spidev = FUNC5(master, &spi_board);
	if (!spidev)
		return -EINVAL;

	return 0;
}