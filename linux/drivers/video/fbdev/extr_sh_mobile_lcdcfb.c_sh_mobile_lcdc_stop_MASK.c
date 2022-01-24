#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; scalar_t__ started; } ;
struct sh_mobile_lcdc_chan {scalar_t__ enabled; TYPE_3__* bl; TYPE_2__* info; scalar_t__ frame_end; int /*<<< orphan*/  frame_end_wait; } ;
struct TYPE_4__ {int /*<<< orphan*/  power; } ;
struct TYPE_6__ {TYPE_1__ props; } ;
struct TYPE_5__ {int /*<<< orphan*/ * fbdefio; int /*<<< orphan*/  deferred_work; } ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct sh_mobile_lcdc_priv *priv)
{
	struct sh_mobile_lcdc_chan *ch;
	int k;

	/* clean up deferred io and ask board code to disable panel */
	for (k = 0; k < FUNC0(priv->ch); k++) {
		ch = &priv->ch[k];
		if (!ch->enabled)
			continue;

		/* deferred io mode:
		 * flush frame, and wait for frame end interrupt
		 * clean up deferred io and enable clock
		 */
		if (ch->info && ch->info->fbdefio) {
			ch->frame_end = 0;
			FUNC3(&ch->info->deferred_work, 0);
			FUNC8(ch->frame_end_wait, ch->frame_end);
			FUNC2(ch->info);
			ch->info->fbdefio = NULL;
			FUNC5(priv);
		}

		if (ch->bl) {
			ch->bl->props.power = FB_BLANK_POWERDOWN;
			FUNC1(ch->bl);
		}

		FUNC6(ch);
	}

	/* stop the lcdc */
	if (priv->started) {
		FUNC7(priv, 0);
		priv->started = 0;
	}

	/* stop clocks */
	for (k = 0; k < FUNC0(priv->ch); k++)
		if (priv->ch[k].enabled)
			FUNC4(priv);
}