#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct nvmem_device {int dummy; } ;
struct lpc18xx_otp {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {struct lpc18xx_otp* priv; int /*<<< orphan*/ * dev; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC18XX_OTP_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct lpc18xx_otp* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ lpc18xx_otp_nvmem_config ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct nvmem_device *nvmem;
	struct lpc18xx_otp *otp;
	struct resource *res;

	otp = FUNC4(&pdev->dev, sizeof(*otp), GFP_KERNEL);
	if (!otp)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	otp->base = FUNC3(&pdev->dev, res);
	if (FUNC0(otp->base))
		return FUNC1(otp->base);

	lpc18xx_otp_nvmem_config.size = LPC18XX_OTP_SIZE;
	lpc18xx_otp_nvmem_config.dev = &pdev->dev;
	lpc18xx_otp_nvmem_config.priv = otp;

	nvmem = FUNC5(&pdev->dev, &lpc18xx_otp_nvmem_config);

	return FUNC2(nvmem);
}