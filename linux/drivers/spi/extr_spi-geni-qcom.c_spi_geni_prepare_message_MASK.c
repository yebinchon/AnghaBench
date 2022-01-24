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
struct spi_message {int /*<<< orphan*/  spi; } ;
struct spi_master {int dummy; } ;
struct geni_se {int dummy; } ;
struct spi_geni_master {int /*<<< orphan*/  dev; struct geni_se se; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENI_SE_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_se*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_master*) ; 
 struct spi_geni_master* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct spi_master *spi,
					struct spi_message *spi_msg)
{
	int ret;
	struct spi_geni_master *mas = FUNC3(spi);
	struct geni_se *se = &mas->se;

	FUNC1(se, GENI_SE_FIFO);
	ret = FUNC2(spi_msg->spi, spi);
	if (ret)
		FUNC0(mas->dev, "Couldn't select mode %d\n", ret);
	return ret;
}