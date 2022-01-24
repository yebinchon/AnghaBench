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
struct spi_transfer {int dummy; } ;
struct spi_device {struct s3c24xx_spi_devstate* controller_state; } ;
struct s3c24xx_spi_devstate {int /*<<< orphan*/  sppre; } ;
struct s3c24xx_spi {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SPPRE ; 
 int FUNC0 (struct spi_device*,struct spi_transfer*) ; 
 struct s3c24xx_spi* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi,
				 struct spi_transfer *t)
{
	struct s3c24xx_spi_devstate *cs = spi->controller_state;
	struct s3c24xx_spi *hw = FUNC1(spi);
	int ret;

	ret = FUNC0(spi, t);
	if (!ret)
		FUNC2(cs->sppre, hw->regs + S3C2410_SPPRE);

	return ret;
}