#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct omapfb_platform_data {int dummy; } ;
struct omapfb_mem_desc {int dummy; } ;
struct omapfb_device {int /*<<< orphan*/  dev; TYPE_1__* panel; TYPE_4__* int_ctrl; TYPE_3__* ext_if; } ;
struct TYPE_12__ {int /*<<< orphan*/  entry; } ;
struct TYPE_8__ {scalar_t__ format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_11__ {int te_connected; int prev_color_mode; TYPE_4__* int_ctrl; TYPE_3__* extif; int /*<<< orphan*/  sys_ck; int /*<<< orphan*/  req_sema; int /*<<< orphan*/  free_req_list; TYPE_6__* req_pool; int /*<<< orphan*/  pending_req_list; struct omapfb_device* fbdev; scalar_t__ prev_flags; int /*<<< orphan*/  auto_update_timer; TYPE_2__ auto_update_window; int /*<<< orphan*/  update_mode; int /*<<< orphan*/  max_transmit_size; int /*<<< orphan*/  reg_timings; int /*<<< orphan*/  req_lock; } ;
struct TYPE_10__ {int (* init ) (struct omapfb_device*,int,struct omapfb_mem_desc*) ;int /*<<< orphan*/  (* cleanup ) () ;} ;
struct TYPE_9__ {int (* init ) (struct omapfb_device*) ;int /*<<< orphan*/  (* cleanup ) () ;int /*<<< orphan*/  max_transmit_size; int /*<<< orphan*/  (* set_timings ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; } ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  HWA742_CONFIG_REG ; 
 int /*<<< orphan*/  HWA742_PLL_DIV_REG ; 
 int /*<<< orphan*/  HWA742_REV_CODE_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IRQ_REQ_POOL_SIZE ; 
 int /*<<< orphan*/  OMAPFB_UPDATE_DISABLED ; 
 int FUNC3 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 struct omapfb_platform_data* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,int) ; 
 TYPE_5__ hwa742 ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwa742_update_window_auto ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct omapfb_device*,int,struct omapfb_mem_desc*) ; 
 int FUNC18 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct omapfb_device *fbdev, int ext_mode,
		       struct omapfb_mem_desc *req_vram)
{
	int r = 0, i;
	u8 rev, conf;
	unsigned long ext_clk;
	unsigned long sys_clk, pix_clk;
	int extif_mem_div;
	struct omapfb_platform_data *omapfb_conf;

	FUNC1(!fbdev->ext_if || !fbdev->int_ctrl);

	hwa742.fbdev = fbdev;
	hwa742.extif = fbdev->ext_if;
	hwa742.int_ctrl = fbdev->int_ctrl;

	omapfb_conf = FUNC10(fbdev->dev);

	hwa742.sys_ck = FUNC7(NULL, "hwa_sys_ck");

	FUNC16(&hwa742.req_lock);

	if ((r = hwa742.int_ctrl->init(fbdev, 1, req_vram)) < 0)
		goto err1;

	if ((r = hwa742.extif->init(fbdev)) < 0)
		goto err2;

	ext_clk = FUNC8(hwa742.sys_ck);
	if ((r = FUNC3(ext_clk, &extif_mem_div)) < 0)
		goto err3;
	hwa742.extif->set_timings(&hwa742.reg_timings);
	FUNC6(hwa742.sys_ck);

	FUNC4(ext_clk, &sys_clk, &pix_clk);
	if ((r = FUNC3(sys_clk, &extif_mem_div)) < 0)
		goto err4;
	hwa742.extif->set_timings(&hwa742.reg_timings);

	rev = FUNC12(HWA742_REV_CODE_REG);
	if ((rev & 0xfc) != 0x80) {
		FUNC9(fbdev->dev, "HWA742: invalid revision %02x\n", rev);
		r = -ENODEV;
		goto err4;
	}


	if (!(FUNC12(HWA742_PLL_DIV_REG) & 0x80)) {
		FUNC9(fbdev->dev,
		      "HWA742: controller not initialized by the bootloader\n");
		r = -ENODEV;
		goto err4;
	}

	if ((r = FUNC15(pix_clk, extif_mem_div)) < 0) {
		FUNC9(hwa742.fbdev->dev,
			"HWA742: can't setup tearing synchronization\n");
		goto err4;
	}
	hwa742.te_connected = 1;

	hwa742.max_transmit_size = hwa742.extif->max_transmit_size;

	hwa742.update_mode = OMAPFB_UPDATE_DISABLED;

	hwa742.auto_update_window.x = 0;
	hwa742.auto_update_window.y = 0;
	hwa742.auto_update_window.width = fbdev->panel->x_res;
	hwa742.auto_update_window.height = fbdev->panel->y_res;
	hwa742.auto_update_window.format = 0;

	FUNC23(&hwa742.auto_update_timer, hwa742_update_window_auto, 0);

	hwa742.prev_color_mode = -1;
	hwa742.prev_flags = 0;

	hwa742.fbdev = fbdev;

	FUNC2(&hwa742.free_req_list);
	FUNC2(&hwa742.pending_req_list);
	for (i = 0; i < FUNC0(hwa742.req_pool); i++)
		FUNC13(&hwa742.req_pool[i].entry, &hwa742.free_req_list);
	FUNC1(i <= IRQ_REQ_POOL_SIZE);
	FUNC14(&hwa742.req_sema, i - IRQ_REQ_POOL_SIZE);

	conf = FUNC12(HWA742_CONFIG_REG);
	FUNC11(fbdev->dev, ": Epson HWA742 LCD controller rev %d "
			"initialized (CNF pins %x)\n", rev & 0x03, conf & 0x07);

	return 0;
err4:
	FUNC5(hwa742.sys_ck);
err3:
	hwa742.extif->cleanup();
err2:
	hwa742.int_ctrl->cleanup();
err1:
	return r;
}