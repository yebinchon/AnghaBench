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
struct sh_mobile_lcdc_priv {unsigned long lddckr; int started; struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {unsigned long enabled; int colorspace; unsigned long line_size; unsigned long base_addr_y; unsigned long base_addr_c; int ldmt1r_value; TYPE_3__* format; TYPE_2__* cfg; } ;
struct TYPE_6__ {unsigned long lddfr; int fourcc; scalar_t__ yuv; } ;
struct TYPE_4__ {scalar_t__ deferred_io_msec; } ;
struct TYPE_5__ {int clock_divider; TYPE_1__ sys_bus_cfg; } ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 unsigned long LDCNT1R_DE ; 
 int /*<<< orphan*/  LDDCKPAT1R ; 
 int /*<<< orphan*/  LDDCKPAT2R ; 
 int LDDCKR_MOSEL ; 
 unsigned long LDDDSR_BS ; 
 unsigned long LDDDSR_LS ; 
 unsigned long LDDDSR_WS ; 
 int /*<<< orphan*/  LDDFR ; 
 unsigned long LDDFR_CF0 ; 
 unsigned long LDDFR_CF1 ; 
 unsigned long LDINTR_FE ; 
 int /*<<< orphan*/  LDMLSR ; 
 int LDMT1R_IFM ; 
 int /*<<< orphan*/  LDPMR ; 
 int /*<<< orphan*/  LDSA1R ; 
 int /*<<< orphan*/  LDSA2R ; 
 int /*<<< orphan*/  LDSM1R ; 
 unsigned long LDSM1R_OS ; 
#define  V4L2_COLORSPACE_JPEG 138 
#define  V4L2_COLORSPACE_REC709 137 
#define  V4L2_PIX_FMT_BGR24 136 
#define  V4L2_PIX_FMT_BGR32 135 
#define  V4L2_PIX_FMT_NV12 134 
#define  V4L2_PIX_FMT_NV16 133 
#define  V4L2_PIX_FMT_NV21 132 
#define  V4L2_PIX_FMT_NV24 131 
#define  V4L2_PIX_FMT_NV42 130 
#define  V4L2_PIX_FMT_NV61 129 
#define  V4L2_PIX_FMT_RGB565 128 
 int /*<<< orphan*/  _LDCNT1R ; 
 int /*<<< orphan*/  _LDCNT2R ; 
 int /*<<< orphan*/  _LDDCKR ; 
 int /*<<< orphan*/  _LDDCKSTPR ; 
 int /*<<< orphan*/  _LDDDSR ; 
 int /*<<< orphan*/  _LDINTR ; 
 scalar_t__ FUNC1 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mobile_lcdc_chan*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_mobile_lcdc_priv*,int) ; 

__attribute__((used)) static void FUNC7(struct sh_mobile_lcdc_priv *priv)
{
	struct sh_mobile_lcdc_chan *ch;
	unsigned long tmp;
	int k, m;

	/* Enable LCDC channels. Read data from external memory, avoid using the
	 * BEU for now.
	 */
	FUNC3(priv, _LDCNT2R, priv->ch[0].enabled | priv->ch[1].enabled);

	/* Stop the LCDC first and disable all interrupts. */
	FUNC6(priv, 0);
	FUNC3(priv, _LDINTR, 0);

	/* Configure power supply, dot clocks and start them. */
	tmp = priv->lddckr;
	for (k = 0; k < FUNC0(priv->ch); k++) {
		ch = &priv->ch[k];
		if (!ch->enabled)
			continue;

		/* Power supply */
		FUNC4(ch, LDPMR, 0);

		m = ch->cfg->clock_divider;
		if (!m)
			continue;

		/* FIXME: sh7724 can only use 42, 48, 54 and 60 for the divider
		 * denominator.
		 */
		FUNC4(ch, LDDCKPAT1R, 0);
		FUNC4(ch, LDDCKPAT2R, (1 << (m/2)) - 1);

		if (m == 1)
			m = LDDCKR_MOSEL;
		tmp |= m << (FUNC1(ch) ? 8 : 0);
	}

	FUNC3(priv, _LDDCKR, tmp);
	FUNC3(priv, _LDDCKSTPR, 0);
	FUNC2(priv, _LDDCKSTPR, ~0, 0);

	/* Setup geometry, format, frame buffer memory and operation mode. */
	for (k = 0; k < FUNC0(priv->ch); k++) {
		ch = &priv->ch[k];
		if (!ch->enabled)
			continue;

		FUNC5(ch);

		tmp = ch->format->lddfr;

		if (ch->format->yuv) {
			switch (ch->colorspace) {
			case V4L2_COLORSPACE_REC709:
				tmp |= LDDFR_CF1;
				break;
			case V4L2_COLORSPACE_JPEG:
				tmp |= LDDFR_CF0;
				break;
			}
		}

		FUNC4(ch, LDDFR, tmp);
		FUNC4(ch, LDMLSR, ch->line_size);
		FUNC4(ch, LDSA1R, ch->base_addr_y);
		if (ch->format->yuv)
			FUNC4(ch, LDSA2R, ch->base_addr_c);

		/* When using deferred I/O mode, configure the LCDC for one-shot
		 * operation and enable the frame end interrupt. Otherwise use
		 * continuous read mode.
		 */
		if (ch->ldmt1r_value & LDMT1R_IFM &&
		    ch->cfg->sys_bus_cfg.deferred_io_msec) {
			FUNC4(ch, LDSM1R, LDSM1R_OS);
			FUNC3(priv, _LDINTR, LDINTR_FE);
		} else {
			FUNC4(ch, LDSM1R, 0);
		}
	}

	/* Word and long word swap. */
	switch (priv->ch[0].format->fourcc) {
	case V4L2_PIX_FMT_RGB565:
	case V4L2_PIX_FMT_NV21:
	case V4L2_PIX_FMT_NV61:
	case V4L2_PIX_FMT_NV42:
		tmp = LDDDSR_LS | LDDDSR_WS;
		break;
	case V4L2_PIX_FMT_BGR24:
	case V4L2_PIX_FMT_NV12:
	case V4L2_PIX_FMT_NV16:
	case V4L2_PIX_FMT_NV24:
		tmp = LDDDSR_LS | LDDDSR_WS | LDDDSR_BS;
		break;
	case V4L2_PIX_FMT_BGR32:
	default:
		tmp = LDDDSR_LS;
		break;
	}
	FUNC3(priv, _LDDDSR, tmp);

	/* Enable the display output. */
	FUNC3(priv, _LDCNT1R, LDCNT1R_DE);
	FUNC6(priv, 1);
	priv->started = 1;
}