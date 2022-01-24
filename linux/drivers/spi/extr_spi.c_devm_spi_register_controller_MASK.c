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
struct spi_controller {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_spi_unregister ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct spi_controller**) ; 
 struct spi_controller** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_controller**) ; 
 int FUNC3 (struct spi_controller*) ; 

int FUNC4(struct device *dev,
				 struct spi_controller *ctlr)
{
	struct spi_controller **ptr;
	int ret;

	ptr = FUNC1(devm_spi_unregister, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC3(ctlr);
	if (!ret) {
		*ptr = ctlr;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return ret;
}