#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mx3fb_platform_data {char* name; int disp_data_fmt; int num_modes; struct fb_videomode* mode; } ;
struct mx3fb_info {scalar_t__ ipu_ch; int /*<<< orphan*/  flip_cmpl; int /*<<< orphan*/  blank; struct mx3fb_data* mx3fb; struct idmac_channel* idmac_channel; } ;
struct mx3fb_data {int disp_data_fmt; struct device* dev; struct fb_info* fbi; } ;
struct TYPE_3__ {scalar_t__ chan_id; } ;
struct idmac_channel {unsigned int eof_irq; TYPE_1__ dma_chan; struct mx3fb_data* client; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_4__ {int yres_virtual; int yres; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct mx3fb_info* par; TYPE_2__ var; int /*<<< orphan*/  modelist; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fb_videomode*) ; 
 int /*<<< orphan*/  DI_HSP_CLK_PER ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_NORMAL ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ IDMAC_SDC_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fb_info*) ; 
 int FUNC2 (struct fb_info*,int) ; 
 int /*<<< orphan*/  default_bpp ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct mx3fb_platform_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,char const*) ; 
 struct fb_videomode* di_mappings ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct fb_info*,char const*,struct fb_videomode const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* fb_mode ; 
 int /*<<< orphan*/  FUNC10 (struct fb_videomode const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC13 (struct device*,int /*<<< orphan*/ *) ; 
 struct fb_videomode* mx3fb_modedb ; 
 int /*<<< orphan*/  mx3fb_ops ; 
 int /*<<< orphan*/  FUNC14 (struct mx3fb_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct mx3fb_data*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct mx3fb_data*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mx3fb_data*,int,int) ; 

__attribute__((used)) static int FUNC19(struct mx3fb_data *mx3fb, struct idmac_channel *ichan)
{
	struct device *dev = mx3fb->dev;
	struct mx3fb_platform_data *mx3fb_pdata = FUNC5(dev);
	const char *name = mx3fb_pdata->name;
	unsigned int irq;
	struct fb_info *fbi;
	struct mx3fb_info *mx3fbi;
	const struct fb_videomode *mode;
	int ret, num_modes;

	if (mx3fb_pdata->disp_data_fmt >= FUNC0(di_mappings)) {
		FUNC4(dev, "Illegal display data format %d\n",
				mx3fb_pdata->disp_data_fmt);
		return -EINVAL;
	}

	ichan->client = mx3fb;
	irq = ichan->eof_irq;

	if (ichan->dma_chan.chan_id != IDMAC_SDC_0)
		return -EINVAL;

	fbi = FUNC13(dev, &mx3fb_ops);
	if (!fbi)
		return -ENOMEM;

	if (!fb_mode)
		fb_mode = name;

	if (!fb_mode) {
		ret = -EINVAL;
		goto emode;
	}

	if (mx3fb_pdata->mode && mx3fb_pdata->num_modes) {
		mode = mx3fb_pdata->mode;
		num_modes = mx3fb_pdata->num_modes;
	} else {
		mode = mx3fb_modedb;
		num_modes = FUNC0(mx3fb_modedb);
	}

	if (!FUNC9(&fbi->var, fbi, fb_mode, mode,
			  num_modes, NULL, default_bpp)) {
		ret = -EBUSY;
		goto emode;
	}

	FUNC10(mode, num_modes, &fbi->modelist);

	/* Default Y virtual size is 2x panel size */
	fbi->var.yres_virtual = fbi->var.yres * 2;

	mx3fb->fbi = fbi;

	/* set Display Interface clock period */
	FUNC14(mx3fb, 0x00100010L, DI_HSP_CLK_PER);
	/* Might need to trigger HSP clock change - see 44.3.3.8.5 */

	FUNC16(mx3fb, 255);
	FUNC18(mx3fb, true, 0xFF);
	FUNC17(mx3fb, IDMAC_SDC_0, false, 0);

	mx3fbi			= fbi->par;
	mx3fbi->idmac_channel	= ichan;
	mx3fbi->ipu_ch		= ichan->dma_chan.chan_id;
	mx3fbi->mx3fb		= mx3fb;
	mx3fbi->blank		= FB_BLANK_NORMAL;

	mx3fb->disp_data_fmt	= mx3fb_pdata->disp_data_fmt;

	FUNC12(&mx3fbi->flip_cmpl);
	FUNC7(ichan->eof_irq);
	FUNC3(mx3fb->dev, "disabling irq %d\n", ichan->eof_irq);
	ret = FUNC2(fbi, false);
	if (ret < 0)
		goto esetpar;

	FUNC1(FB_BLANK_UNBLANK, fbi);

	FUNC6(dev, "registered, using mode %s\n", fb_mode);

	ret = FUNC15(fbi);
	if (ret < 0)
		goto erfb;

	return 0;

erfb:
esetpar:
emode:
	FUNC8(&fbi->cmap);
	FUNC11(fbi);

	return ret;
}