#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct mxs_data* data; } ;
struct mxs_ocotp {int /*<<< orphan*/  clk; int /*<<< orphan*/  nvmem; int /*<<< orphan*/  base; } ;
struct mxs_data {int /*<<< orphan*/  size; } ;
struct TYPE_5__ {struct device* dev; struct mxs_ocotp* priv; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct mxs_ocotp* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__ ocotp_config ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mxs_ocotp*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct mxs_data *data;
	struct mxs_ocotp *otp;
	const struct of_device_id *match;
	int ret;

	match = FUNC9(dev->driver->of_match_table, dev);
	if (!match || !match->data)
		return -EINVAL;

	otp = FUNC6(dev, sizeof(*otp), GFP_KERNEL);
	if (!otp)
		return -ENOMEM;

	otp->base = FUNC8(pdev, 0);
	if (FUNC0(otp->base))
		return FUNC1(otp->base);

	otp->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(otp->clk))
		return FUNC1(otp->clk);

	ret = FUNC2(otp->clk);
	if (ret < 0) {
		FUNC4(dev, "failed to prepare clk: %d\n", ret);
		return ret;
	}

	data = match->data;

	ocotp_config.size = data->size;
	ocotp_config.priv = otp;
	ocotp_config.dev = dev;
	otp->nvmem = FUNC7(dev, &ocotp_config);
	if (FUNC0(otp->nvmem)) {
		ret = FUNC1(otp->nvmem);
		goto err_clk;
	}

	FUNC10(pdev, otp);

	return 0;

err_clk:
	FUNC3(otp->clk);

	return ret;
}