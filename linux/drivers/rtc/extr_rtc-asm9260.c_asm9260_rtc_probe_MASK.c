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
typedef  int u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct asm9260_rtc_priv {int /*<<< orphan*/  clk; scalar_t__ rtc; scalar_t__ iobase; struct device* dev; } ;

/* Variables and functions */
 int BM_AMR_OFF ; 
 int BM_CLKEN ; 
 int BM_CTCRST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HW_AMR ; 
 scalar_t__ HW_CCR ; 
 scalar_t__ HW_CIIR ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  asm9260_rtc_irq ; 
 int /*<<< orphan*/  asm9260_rtc_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 scalar_t__ FUNC7 (struct device*,struct resource*) ; 
 struct asm9260_rtc_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct asm9260_rtc_priv*) ; 
 scalar_t__ FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct asm9260_rtc_priv*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct asm9260_rtc_priv *priv;
	struct device *dev = &pdev->dev;
	struct resource	*res;
	int irq_alarm, ret;
	u32 ccr;

	priv = FUNC8(dev, sizeof(struct asm9260_rtc_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = &pdev->dev;
	FUNC15(pdev, priv);

	irq_alarm = FUNC13(pdev, 0);
	if (irq_alarm < 0)
		return irq_alarm;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	priv->iobase = FUNC7(dev, res);
	if (FUNC0(priv->iobase))
		return FUNC1(priv->iobase);

	priv->clk = FUNC6(dev, "ahb");
	ret = FUNC3(priv->clk);
	if (ret) {
		FUNC4(dev, "Failed to enable clk!\n");
		return ret;
	}

	ccr = FUNC11(priv->iobase + HW_CCR);
	/* if dev is not enabled, reset it */
	if ((ccr & (BM_CLKEN | BM_CTCRST)) != BM_CLKEN) {
		FUNC12(BM_CTCRST, priv->iobase + HW_CCR);
		ccr = 0;
	}

	FUNC12(BM_CLKEN | ccr, priv->iobase + HW_CCR);
	FUNC12(0, priv->iobase + HW_CIIR);
	FUNC12(BM_AMR_OFF, priv->iobase + HW_AMR);

	priv->rtc = FUNC10(dev, FUNC5(dev),
					     &asm9260_rtc_ops, THIS_MODULE);
	if (FUNC0(priv->rtc)) {
		ret = FUNC1(priv->rtc);
		FUNC4(dev, "Failed to register RTC device: %d\n", ret);
		goto err_return;
	}

	ret = FUNC9(dev, irq_alarm, NULL,
					asm9260_rtc_irq, IRQF_ONESHOT,
					FUNC5(dev), priv);
	if (ret < 0) {
		FUNC4(dev, "can't get irq %i, err %d\n",
			irq_alarm, ret);
		goto err_return;
	}

	return 0;

err_return:
	FUNC2(priv->clk);
	return ret;
}