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
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct lantiq_ssc_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lantiq_ssc_spi*,struct spi_device*,struct spi_transfer*) ; 
 struct lantiq_ssc_spi* FUNC1 (struct spi_master*) ; 
 int FUNC2 (struct lantiq_ssc_spi*,struct spi_device*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC3(struct spi_master *master,
				   struct spi_device *spidev,
				   struct spi_transfer *t)
{
	struct lantiq_ssc_spi *spi = FUNC1(master);

	FUNC0(spi, spidev, t);

	return FUNC2(spi, spidev, t);
}