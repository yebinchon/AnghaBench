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
struct spi_message {TYPE_1__* spi; } ;
struct spi_master {int dummy; } ;
struct lantiq_ssc_spi {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct lantiq_ssc_spi*,int /*<<< orphan*/ ) ; 
 struct lantiq_ssc_spi* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct spi_master *master,
				      struct spi_message *message)
{
	struct lantiq_ssc_spi *spi = FUNC3(master);

	FUNC1(spi);
	FUNC2(spi, message->spi->mode);
	FUNC0(spi);

	return 0;
}