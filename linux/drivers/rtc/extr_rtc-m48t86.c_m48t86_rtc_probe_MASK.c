#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct nvmem_config {char* name; int word_size; int stride; int /*<<< orphan*/ * priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  size; } ;
struct m48t86_rtc_info {TYPE_1__* rtc; TYPE_1__* data_reg; TYPE_1__* index_reg; } ;
struct TYPE_6__ {int nvram_old_abi; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  M48T86_D ; 
 unsigned char M48T86_D_VRT ; 
 int /*<<< orphan*/  M48T86_NVRAM_LEN ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct m48t86_rtc_info*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct m48t86_rtc_info* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m48t86_nvram_read ; 
 int /*<<< orphan*/  m48t86_nvram_write ; 
 unsigned char FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m48t86_rtc_ops ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct nvmem_config*) ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct m48t86_rtc_info *info;
	struct resource *res;
	unsigned char reg;
	int err;
	struct nvmem_config m48t86_nvmem_cfg = {
		.name = "m48t86_nvram",
		.word_size = 1,
		.stride = 1,
		.size = M48T86_NVRAM_LEN,
		.reg_read = m48t86_nvram_read,
		.reg_write = m48t86_nvram_write,
		.priv = &pdev->dev,
	};

	info = FUNC5(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	info->index_reg = FUNC4(&pdev->dev, res);
	if (FUNC0(info->index_reg))
		return FUNC1(info->index_reg);

	res = FUNC9(pdev, IORESOURCE_MEM, 1);
	if (!res)
		return -ENODEV;
	info->data_reg = FUNC4(&pdev->dev, res);
	if (FUNC0(info->data_reg))
		return FUNC1(info->data_reg);

	FUNC3(&pdev->dev, info);

	if (!FUNC8(pdev)) {
		FUNC2(&pdev->dev, "RTC not present\n");
		return -ENODEV;
	}

	info->rtc = FUNC6(&pdev->dev);
	if (FUNC0(info->rtc))
		return FUNC1(info->rtc);

	info->rtc->ops = &m48t86_rtc_ops;
	info->rtc->nvram_old_abi = true;

	err = FUNC11(info->rtc);
	if (err)
		return err;

	FUNC10(info->rtc, &m48t86_nvmem_cfg);

	/* read battery status */
	reg = FUNC7(&pdev->dev, M48T86_D);
	FUNC2(&pdev->dev, "battery %s\n",
		 (reg & M48T86_D_VRT) ? "ok" : "exhausted");

	return 0;
}