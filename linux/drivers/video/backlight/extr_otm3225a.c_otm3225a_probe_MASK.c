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
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct otm3225a_data {struct lcd_device* ld; struct spi_device* spi; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct lcd_device*) ; 
 int FUNC2 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct otm3225a_data*) ; 
 struct otm3225a_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC7 (struct device*,int /*<<< orphan*/ ,struct device*,struct otm3225a_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  display_enable_rgb_interface ; 
 int /*<<< orphan*/  display_init ; 
 int /*<<< orphan*/  otm3225a_ops ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct otm3225a_data *dd;
	struct lcd_device *ld;
	struct device *dev = &spi->dev;

	dd = FUNC6(dev, sizeof(struct otm3225a_data), GFP_KERNEL);
	if (dd == NULL)
		return -ENOMEM;

	ld = FUNC7(dev, FUNC4(dev), dev, dd,
				      &otm3225a_ops);
	if (FUNC1(ld))
		return FUNC2(ld);

	dd->spi = spi;
	dd->ld = ld;
	FUNC5(dev, dd);

	FUNC3(dev, "Initializing and switching to RGB interface");
	FUNC8(spi, display_init, FUNC0(display_init));
	FUNC8(spi, display_enable_rgb_interface,
		       FUNC0(display_enable_rgb_interface));
	return 0;
}