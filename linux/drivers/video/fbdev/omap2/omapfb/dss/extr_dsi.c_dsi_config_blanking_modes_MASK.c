#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int blanking_mode; int hfp_blanking_mode; int hbp_blanking_mode; int hsa_blanking_mode; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC1(dsidev);
	int blanking_mode = dsi->vm_timings.blanking_mode;
	int hfp_blanking_mode = dsi->vm_timings.hfp_blanking_mode;
	int hbp_blanking_mode = dsi->vm_timings.hbp_blanking_mode;
	int hsa_blanking_mode = dsi->vm_timings.hsa_blanking_mode;
	u32 r;

	/*
	 * 0 = TX FIFO packets sent or LPS in corresponding blanking periods
	 * 1 = Long blanking packets are sent in corresponding blanking periods
	 */
	r = FUNC2(dsidev, DSI_CTRL);
	r = FUNC0(r, blanking_mode, 20, 20);		/* BLANKING_MODE */
	r = FUNC0(r, hfp_blanking_mode, 21, 21);	/* HFP_BLANKING */
	r = FUNC0(r, hbp_blanking_mode, 22, 22);	/* HBP_BLANKING */
	r = FUNC0(r, hsa_blanking_mode, 23, 23);	/* HSA_BLANKING */
	FUNC3(dsidev, DSI_CTRL, r);
}