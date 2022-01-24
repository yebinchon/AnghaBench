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
typedef  int u8 ;
struct spi_device {int bits_per_word; int max_speed_hz; int mode; int /*<<< orphan*/  dev; } ;
struct rtc_device {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int RTC_ADDR_CTRL ; 
 int RTC_CMD_READ ; 
 int RTC_CMD_WRITE ; 
 int RTC_CMD_WRITE_DISABLE ; 
 int SPI_CPHA ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct rtc_device* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds1302_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct spi_device*) ; 
 int FUNC5 (struct spi_device*,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct rtc_device	*rtc;
	u8		addr;
	u8		buf[4];
	u8		*bp;
	int		status;

	/* Sanity check board setup data.  This may be hooked up
	 * in 3wire mode, but we don't care.  Note that unless
	 * there's an inverter in place, this needs SPI_CS_HIGH!
	 */
	if (spi->bits_per_word && (spi->bits_per_word != 8)) {
		FUNC2(&spi->dev, "bad word length\n");
		return -EINVAL;
	} else if (spi->max_speed_hz > 2000000) {
		FUNC2(&spi->dev, "speed is too high\n");
		return -EINVAL;
	} else if (spi->mode & SPI_CPHA) {
		FUNC2(&spi->dev, "bad mode\n");
		return -EINVAL;
	}

	addr = RTC_ADDR_CTRL << 1 | RTC_CMD_READ;
	status = FUNC5(spi, &addr, sizeof(addr), buf, 1);
	if (status < 0) {
		FUNC2(&spi->dev, "control register read error %d\n",
				status);
		return status;
	}

	if ((buf[0] & ~RTC_CMD_WRITE_DISABLE) != 0) {
		status = FUNC5(spi, &addr, sizeof(addr), buf, 1);
		if (status < 0) {
			FUNC2(&spi->dev, "control register read error %d\n",
					status);
			return status;
		}

		if ((buf[0] & ~RTC_CMD_WRITE_DISABLE) != 0) {
			FUNC2(&spi->dev, "junk in control register\n");
			return -ENODEV;
		}
	}
	if (buf[0] == 0) {
		bp = buf;
		*bp++ = RTC_ADDR_CTRL << 1 | RTC_CMD_WRITE;
		*bp++ = RTC_CMD_WRITE_DISABLE;

		status = FUNC5(spi, buf, 2, NULL, 0);
		if (status < 0) {
			FUNC2(&spi->dev, "control register write error %d\n",
					status);
			return status;
		}

		addr = RTC_ADDR_CTRL << 1 | RTC_CMD_READ;
		status = FUNC5(spi, &addr, sizeof(addr), buf, 1);
		if (status < 0) {
			FUNC2(&spi->dev,
					"error %d reading control register\n",
					status);
			return status;
		}

		if (buf[0] != RTC_CMD_WRITE_DISABLE) {
			FUNC2(&spi->dev, "failed to detect chip\n");
			return -ENODEV;
		}
	}

	FUNC4(spi, spi);

	rtc = FUNC3(&spi->dev, "ds1302",
			&ds1302_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc)) {
		status = FUNC1(rtc);
		FUNC2(&spi->dev, "error %d registering rtc\n", status);
		return status;
	}

	return 0;
}