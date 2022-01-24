#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sh_mobile_lcdc_priv {scalar_t__ irq; scalar_t__ base; scalar_t__ dot_clk; struct sh_mobile_lcdc_overlay* ch; struct sh_mobile_lcdc_overlay* overlays; } ;
struct sh_mobile_lcdc_overlay {int /*<<< orphan*/  open_lock; scalar_t__ bl; int /*<<< orphan*/  dma_handle; scalar_t__ fb_mem; int /*<<< orphan*/  fb_size; TYPE_5__* cfg; TYPE_1__* tx_dev; } ;
struct sh_mobile_lcdc_chan {int /*<<< orphan*/  open_lock; scalar_t__ bl; int /*<<< orphan*/  dma_handle; scalar_t__ fb_mem; int /*<<< orphan*/  fb_size; TYPE_5__* cfg; TYPE_1__* tx_dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_4__* tx_dev; } ;
struct TYPE_8__ {TYPE_2__* driver; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lcdc; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sh_mobile_lcdc_overlay*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sh_mobile_lcdc_priv* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sh_mobile_lcdc_overlay*) ; 
 int /*<<< orphan*/  FUNC12 (struct sh_mobile_lcdc_overlay*) ; 
 int /*<<< orphan*/  FUNC13 (struct sh_mobile_lcdc_overlay*) ; 
 int /*<<< orphan*/  FUNC14 (struct sh_mobile_lcdc_overlay*) ; 
 int /*<<< orphan*/  FUNC15 (struct sh_mobile_lcdc_priv*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct sh_mobile_lcdc_priv *priv = FUNC8(pdev);
	unsigned int i;

	for (i = 0; i < FUNC0(priv->overlays); i++)
		FUNC14(&priv->overlays[i]);
	for (i = 0; i < FUNC0(priv->ch); i++)
		FUNC12(&priv->ch[i]);

	FUNC15(priv);

	for (i = 0; i < FUNC0(priv->overlays); i++) {
		struct sh_mobile_lcdc_overlay *ovl = &priv->overlays[i];

		FUNC13(ovl);

		if (ovl->fb_mem)
			FUNC2(&pdev->dev, ovl->fb_size,
					  ovl->fb_mem, ovl->dma_handle);
	}

	for (i = 0; i < FUNC0(priv->ch); i++) {
		struct sh_mobile_lcdc_chan *ch = &priv->ch[i];

		if (ch->tx_dev) {
			ch->tx_dev->lcdc = NULL;
			FUNC6(ch->cfg->tx_dev->dev.driver->owner);
		}

		FUNC11(ch);

		if (ch->fb_mem)
			FUNC2(&pdev->dev, ch->fb_size,
					  ch->fb_mem, ch->dma_handle);
	}

	for (i = 0; i < FUNC0(priv->ch); i++) {
		struct sh_mobile_lcdc_chan *ch = &priv->ch[i];

		if (ch->bl)
			FUNC10(ch->bl);
		FUNC7(&ch->open_lock);
	}

	if (priv->dot_clk) {
		FUNC9(&pdev->dev);
		FUNC1(priv->dot_clk);
	}

	if (priv->base)
		FUNC4(priv->base);

	if (priv->irq)
		FUNC3(priv->irq, priv);
	FUNC5(priv);
	return 0;
}