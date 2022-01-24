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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {scalar_t__ mode; int /*<<< orphan*/  pix_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  DSI_FIFO_SIZE_32 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FEAT_DSI_DCS_CMD_CONFIG_VC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 struct dsi_data* FUNC8 (struct platform_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC8(dsidev);
	u32 r;
	int buswidth = 0;

	FUNC5(dsidev, DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32);

	FUNC4(dsidev, DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32);

	/* XXX what values for the timeouts? */
	FUNC13(dsidev, 0x1000, false, false);
	FUNC14(dsidev, 0x1fff, true, true);
	FUNC12(dsidev, 0x1fff, true, true);
	FUNC11(dsidev, 0x1fff, true, true);

	switch (FUNC9(dsi->pix_fmt)) {
	case 16:
		buswidth = 0;
		break;
	case 18:
		buswidth = 1;
		break;
	case 24:
		buswidth = 2;
		break;
	default:
		FUNC0();
		return -EINVAL;
	}

	r = FUNC10(dsidev, DSI_CTRL);
	r = FUNC1(r, 1, 1, 1);	/* CS_RX_EN */
	r = FUNC1(r, 1, 2, 2);	/* ECC_RX_EN */
	r = FUNC1(r, 1, 3, 3);	/* TX_FIFO_ARBITRATION */
	r = FUNC1(r, 1, 4, 4);	/* VP_CLK_RATIO, always 1, see errata*/
	r = FUNC1(r, buswidth, 7, 6); /* VP_DATA_BUS_WIDTH */
	r = FUNC1(r, 0, 8, 8);	/* VP_CLK_POL */
	r = FUNC1(r, 1, 14, 14);	/* TRIGGER_RESET_MODE */
	r = FUNC1(r, 1, 19, 19);	/* EOT_ENABLE */
	if (!FUNC17(FEAT_DSI_DCS_CMD_CONFIG_VC)) {
		r = FUNC1(r, 1, 24, 24);	/* DCS_CMD_ENABLE */
		/* DCS_CMD_CODE, 1=start, 0=continue */
		r = FUNC1(r, 0, 25, 25);
	}

	FUNC16(dsidev, DSI_CTRL, r);

	FUNC6(dsidev);

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		FUNC7(dsidev);
		FUNC2(dsidev);
		FUNC3(dsidev);
	}

	FUNC15(dsidev, 0);
	FUNC15(dsidev, 1);
	FUNC15(dsidev, 2);
	FUNC15(dsidev, 3);

	return 0;
}