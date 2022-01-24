#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_mem {TYPE_1__* spi; } ;
struct nxp_fspi {TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip_select; struct device dev; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 char const* FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (struct device*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct nxp_fspi* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC6(struct spi_mem *mem)
{
	struct nxp_fspi *f = FUNC5(mem->spi->master);
	struct device *dev = &mem->spi->dev;
	const char *name;

	// Set custom name derived from the platform_device of the controller.
	if (FUNC4(f->dev->of_node) == 1)
		return FUNC2(f->dev);

	name = FUNC3(dev, GFP_KERNEL,
			      "%s-%d", FUNC2(f->dev),
			      mem->spi->chip_select);

	if (!name) {
		FUNC1(dev, "failed to get memory for custom flash name\n");
		return FUNC0(-ENOMEM);
	}

	return name;
}