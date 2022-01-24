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
struct spi_device {struct s3c64xx_spi_csinfo* controller_data; } ;
struct s3c64xx_spi_driver_data {scalar_t__ regs; } ;
struct s3c64xx_spi_csinfo {int fb_delay; } ;

/* Variables and functions */
 scalar_t__ S3C64XX_SPI_FB_CLK ; 
 struct s3c64xx_spi_driver_data* FUNC0 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct spi_master *master,
				       struct spi_message *msg)
{
	struct s3c64xx_spi_driver_data *sdd = FUNC0(master);
	struct spi_device *spi = msg->spi;
	struct s3c64xx_spi_csinfo *cs = spi->controller_data;

	/* Configure feedback delay */
	FUNC1(cs->fb_delay & 0x3, sdd->regs + S3C64XX_SPI_FB_CLK);

	return 0;
}