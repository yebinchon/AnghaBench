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
struct regmap {int dummy; } ;
struct nvmem_config {char* name; int stride; int word_size; int /*<<< orphan*/  type; struct regmap* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  size; } ;
struct ds3232 {int irq; int /*<<< orphan*/  rtc; struct device* dev; struct regmap* regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3232_REG_SRAM_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVMEM_TYPE_BATTERY_BACKED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ds3232*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct ds3232* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char const*) ; 
 int /*<<< orphan*/  ds3232_irq ; 
 int /*<<< orphan*/  ds3232_nvmem_read ; 
 int /*<<< orphan*/  ds3232_nvmem_write ; 
 int /*<<< orphan*/  ds3232_rtc_ops ; 
 int FUNC11 (int /*<<< orphan*/ ,struct nvmem_config*) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct regmap *regmap, int irq,
			const char *name)
{
	struct ds3232 *ds3232;
	int ret;
	struct nvmem_config nvmem_cfg = {
		.name = "ds3232_sram",
		.stride = 1,
		.size = DS3232_REG_SRAM_SIZE,
		.word_size = 1,
		.reg_read = ds3232_nvmem_read,
		.reg_write = ds3232_nvmem_write,
		.priv = regmap,
		.type = NVMEM_TYPE_BATTERY_BACKED
	};

	ds3232 = FUNC6(dev, sizeof(*ds3232), GFP_KERNEL);
	if (!ds3232)
		return -ENOMEM;

	ds3232->regmap = regmap;
	ds3232->irq = irq;
	ds3232->dev = dev;
	FUNC3(dev, ds3232);

	ret = FUNC9(dev);
	if (ret)
		return ret;

	if (ds3232->irq > 0)
		FUNC4(dev, 1);

	FUNC10(dev, name);

	ds3232->rtc = FUNC8(dev, name, &ds3232_rtc_ops,
						THIS_MODULE);
	if (FUNC0(ds3232->rtc))
		return FUNC1(ds3232->rtc);

	ret = FUNC11(ds3232->rtc, &nvmem_cfg);
	if(ret)
		return ret;

	if (ds3232->irq > 0) {
		ret = FUNC7(dev, ds3232->irq, NULL,
						ds3232_irq,
						IRQF_SHARED | IRQF_ONESHOT,
						name, dev);
		if (ret) {
			FUNC5(dev, 0);
			ds3232->irq = 0;
			FUNC2(dev, "unable to request IRQ\n");
		}
	}

	return 0;
}