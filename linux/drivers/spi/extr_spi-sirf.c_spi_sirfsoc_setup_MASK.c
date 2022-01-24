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
struct spi_device {int cs_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct sirfsoc_spi {int hw_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITBANG_CS_INACTIVE ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*) ; 
 struct sirfsoc_spi* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct sirfsoc_spi *sspi;
	int ret = 0;

	sspi = FUNC5(spi->master);
	if (spi->cs_gpio == -ENOENT)
		sspi->hw_cs = true;
	else {
		sspi->hw_cs = false;
		if (!FUNC4(spi)) {
			void *cs = FUNC3(sizeof(int), GFP_KERNEL);
			if (!cs) {
				ret = -ENOMEM;
				goto exit;
			}
			ret = FUNC1(spi->cs_gpio);
			if (!ret) {
				FUNC0(&spi->dev, "no valid gpio\n");
				ret = -ENOENT;
				goto exit;
			}
			ret = FUNC2(spi->cs_gpio, DRIVER_NAME);
			if (ret) {
				FUNC0(&spi->dev, "failed to request gpio\n");
				goto exit;
			}
			FUNC6(spi, cs);
		}
	}
	FUNC8(spi);
	FUNC7(spi, BITBANG_CS_INACTIVE);
exit:
	return ret;
}