#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sh_mobile_lcdc_priv {int irq; struct sh_mobile_lcdc_overlay* overlays; struct sh_mobile_lcdc_chan* ch; int /*<<< orphan*/  base; int /*<<< orphan*/  forced_fourcc; int /*<<< orphan*/  hw_usecnt; TYPE_2__* dev; } ;
struct sh_mobile_lcdc_overlay {struct sh_mobile_lcdc_chan* channel; struct sh_mobile_lcdc_chan* cfg; } ;
struct sh_mobile_lcdc_info {struct sh_mobile_lcdc_chan* overlays; int /*<<< orphan*/  clock_source; struct sh_mobile_lcdc_chan* ch; } ;
struct TYPE_6__ {scalar_t__ max_brightness; } ;
struct sh_mobile_lcdc_chan {int chan; int /*<<< orphan*/  fourcc; int /*<<< orphan*/  reg_offs; int /*<<< orphan*/  enabled; int /*<<< orphan*/  bl; TYPE_1__ bl_info; struct sh_mobile_lcdc_chan* cfg; int /*<<< orphan*/  vsync_completion; int /*<<< orphan*/  frame_end_wait; struct sh_mobile_lcdc_priv* lcdc; int /*<<< orphan*/  open_lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {struct sh_mobile_lcdc_info* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
#define  LCDC_CHAN_MAINLCD 129 
#define  LCDC_CHAN_SUBLCD 128 
 int /*<<< orphan*/  LDCNT2R_ME ; 
 int /*<<< orphan*/  LDCNT2R_SE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sh_mobile_lcdc_priv* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcdc_offs_mainlcd ; 
 int /*<<< orphan*/  lcdc_offs_sublcd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct sh_mobile_lcdc_chan*) ; 
 int FUNC16 (struct sh_mobile_lcdc_chan*) ; 
 int FUNC17 (struct sh_mobile_lcdc_chan*) ; 
 int FUNC18 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  sh_mobile_lcdc_irq ; 
 int FUNC19 (struct sh_mobile_lcdc_overlay*) ; 
 int FUNC20 (struct sh_mobile_lcdc_overlay*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*) ; 
 int FUNC22 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sh_mobile_lcdc_priv*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct sh_mobile_lcdc_info *pdata = pdev->dev.platform_data;
	struct sh_mobile_lcdc_priv *priv;
	struct resource *res;
	int num_channels;
	int error;
	int irq, i;

	if (!pdata) {
		FUNC2(&pdev->dev, "no platform data defined\n");
		return -EINVAL;
	}

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	irq = FUNC9(pdev, 0);
	if (!res || irq < 0) {
		FUNC2(&pdev->dev, "cannot get platform resources\n");
		return -ENOENT;
	}

	priv = FUNC7(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = &pdev->dev;

	for (i = 0; i < FUNC0(priv->ch); i++)
		FUNC8(&priv->ch[i].open_lock);
	FUNC11(pdev, priv);

	error = FUNC13(irq, sh_mobile_lcdc_irq, 0,
			    FUNC3(&pdev->dev), priv);
	if (error) {
		FUNC2(&pdev->dev, "unable to request irq\n");
		goto err1;
	}

	priv->irq = irq;
	FUNC1(&priv->hw_usecnt, -1);

	for (i = 0, num_channels = 0; i < FUNC0(pdata->ch); i++) {
		struct sh_mobile_lcdc_chan *ch = priv->ch + num_channels;

		ch->lcdc = priv;
		ch->cfg = &pdata->ch[i];

		error = FUNC18(ch);
		if (error) {
			FUNC2(&pdev->dev, "unsupported interface type\n");
			goto err1;
		}
		FUNC5(&ch->frame_end_wait);
		FUNC4(&ch->vsync_completion);

		/* probe the backlight is there is one defined */
		if (ch->cfg->bl_info.max_brightness)
			ch->bl = FUNC15(&pdev->dev, ch);

		switch (pdata->ch[i].chan) {
		case LCDC_CHAN_MAINLCD:
			ch->enabled = LDCNT2R_ME;
			ch->reg_offs = lcdc_offs_mainlcd;
			num_channels++;
			break;
		case LCDC_CHAN_SUBLCD:
			ch->enabled = LDCNT2R_SE;
			ch->reg_offs = lcdc_offs_sublcd;
			num_channels++;
			break;
		}
	}

	if (!num_channels) {
		FUNC2(&pdev->dev, "no channels defined\n");
		error = -EINVAL;
		goto err1;
	}

	/* for dual channel LCDC (MAIN + SUB) force shared format setting */
	if (num_channels == 2)
		priv->forced_fourcc = pdata->ch[0].fourcc;

	priv->base = FUNC6(res->start, FUNC14(res));
	if (!priv->base) {
		error = -ENOMEM;
		goto err1;
	}

	error = FUNC22(priv, pdata->clock_source);
	if (error) {
		FUNC2(&pdev->dev, "unable to setup clocks\n");
		goto err1;
	}

	/* Enable runtime PM. */
	FUNC12(&pdev->dev);

	for (i = 0; i < num_channels; i++) {
		struct sh_mobile_lcdc_chan *ch = &priv->ch[i];

		error = FUNC17(ch);
		if (error)
			goto err1;
	}

	for (i = 0; i < FUNC0(pdata->overlays); i++) {
		struct sh_mobile_lcdc_overlay *ovl = &priv->overlays[i];

		ovl->cfg = &pdata->overlays[i];
		ovl->channel = &priv->ch[0];

		error = FUNC20(ovl);
		if (error)
			goto err1;
	}

	error = FUNC23(priv);
	if (error) {
		FUNC2(&pdev->dev, "unable to start hardware\n");
		goto err1;
	}

	for (i = 0; i < num_channels; i++) {
		struct sh_mobile_lcdc_chan *ch = priv->ch + i;

		error = FUNC16(ch);
		if (error)
			goto err1;
	}

	for (i = 0; i < FUNC0(pdata->overlays); i++) {
		struct sh_mobile_lcdc_overlay *ovl = &priv->overlays[i];

		error = FUNC19(ovl);
		if (error)
			goto err1;
	}

	return 0;
err1:
	FUNC21(pdev);

	return error;
}