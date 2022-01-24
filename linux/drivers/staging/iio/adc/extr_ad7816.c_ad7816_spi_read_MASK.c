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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct ad7816_chip_info {scalar_t__ mode; scalar_t__ id; int /*<<< orphan*/  rdwr_pin; int /*<<< orphan*/  busy_pin; int /*<<< orphan*/  convert_pin; int /*<<< orphan*/  channel_id; struct spi_device* spi_dev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ AD7816_PD ; 
 scalar_t__ ID_AD7816 ; 
 scalar_t__ ID_AD7817 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct spi_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct spi_device*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct ad7816_chip_info *chip, u16 *data)
{
	struct spi_device *spi_dev = chip->spi_dev;
	int ret;
	__be16 buf;

	FUNC4(chip->rdwr_pin, 1);
	FUNC4(chip->rdwr_pin, 0);
	ret = FUNC6(spi_dev, &chip->channel_id, sizeof(chip->channel_id));
	if (ret < 0) {
		FUNC2(&spi_dev->dev, "SPI channel setting error\n");
		return ret;
	}
	FUNC4(chip->rdwr_pin, 1);

	if (chip->mode == AD7816_PD) { /* operating mode 2 */
		FUNC4(chip->convert_pin, 1);
		FUNC4(chip->convert_pin, 0);
	} else { /* operating mode 1 */
		FUNC4(chip->convert_pin, 0);
		FUNC4(chip->convert_pin, 1);
	}

	if (chip->id == ID_AD7816 || chip->id == ID_AD7817) {
		while (FUNC3(chip->busy_pin))
			FUNC1();
	}

	FUNC4(chip->rdwr_pin, 0);
	FUNC4(chip->rdwr_pin, 1);
	ret = FUNC5(spi_dev, &buf, sizeof(*data));
	if (ret < 0) {
		FUNC2(&spi_dev->dev, "SPI data read error\n");
		return ret;
	}

	*data = FUNC0(buf);

	return ret;
}