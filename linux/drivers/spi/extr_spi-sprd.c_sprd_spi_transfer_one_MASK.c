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
struct spi_transfer {int len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {scalar_t__ (* can_dma ) (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;} ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (struct spi_controller*) ; 
 int FUNC1 (struct spi_device*,struct spi_transfer*) ; 
 int FUNC2 (struct spi_device*,struct spi_transfer*) ; 
 int FUNC3 (struct spi_device*,struct spi_transfer*) ; 
 scalar_t__ FUNC4 (struct spi_controller*,struct spi_device*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *sctlr,
				 struct spi_device *sdev,
				 struct spi_transfer *t)
{
	int ret;

	ret = FUNC2(sdev, t);
	if (ret)
		goto setup_err;

	if (sctlr->can_dma(sctlr, sdev, t))
		ret = FUNC1(sdev, t);
	else
		ret = FUNC3(sdev, t);

	if (ret == t->len)
		ret = 0;
	else if (ret >= 0)
		ret = -EREMOTEIO;

setup_err:
	FUNC0(sctlr);

	return ret;
}