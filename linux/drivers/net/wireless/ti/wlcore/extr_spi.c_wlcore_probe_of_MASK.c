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
struct wlcore_platdev_data {int ref_clock_xtal; int /*<<< orphan*/  tcxo_clock_freq; int /*<<< orphan*/  ref_clock_freq; TYPE_1__* family; } ;
struct wl12xx_spi_glue {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wlcore_spi_of_match_table ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi, struct wl12xx_spi_glue *glue,
			   struct wlcore_platdev_data *pdev_data)
{
	struct device_node *dt_node = spi->dev.of_node;
	const struct of_device_id *of_id;

	of_id = FUNC2(wlcore_spi_of_match_table, dt_node);
	if (!of_id)
		return -ENODEV;

	pdev_data->family = of_id->data;
	FUNC0(&spi->dev, "selected chip family is %s\n",
		 pdev_data->family->name);

	if (FUNC1(dt_node, "clock-xtal", NULL))
		pdev_data->ref_clock_xtal = true;

	/* optional clock frequency params */
	FUNC3(dt_node, "ref-clock-frequency",
			     &pdev_data->ref_clock_freq);
	FUNC3(dt_node, "tcxo-clock-frequency",
			     &pdev_data->tcxo_clock_freq);

	return 0;
}