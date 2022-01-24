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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct s3c64xx_spi_csinfo {int /*<<< orphan*/  fb_delay; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct s3c64xx_spi_csinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct s3c64xx_spi_csinfo* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct s3c64xx_spi_csinfo *FUNC6(
				struct spi_device *spi)
{
	struct s3c64xx_spi_csinfo *cs;
	struct device_node *slave_np, *data_np = NULL;
	u32 fb_delay = 0;

	slave_np = spi->dev.of_node;
	if (!slave_np) {
		FUNC1(&spi->dev, "device node not found\n");
		return FUNC0(-EINVAL);
	}

	data_np = FUNC3(slave_np, "controller-data");
	if (!data_np) {
		FUNC1(&spi->dev, "child node 'controller-data' not found\n");
		return FUNC0(-EINVAL);
	}

	cs = FUNC2(sizeof(*cs), GFP_KERNEL);
	if (!cs) {
		FUNC4(data_np);
		return FUNC0(-ENOMEM);
	}

	FUNC5(data_np, "samsung,spi-feedback-delay", &fb_delay);
	cs->fb_delay = fb_delay;
	FUNC4(data_np);
	return cs;
}