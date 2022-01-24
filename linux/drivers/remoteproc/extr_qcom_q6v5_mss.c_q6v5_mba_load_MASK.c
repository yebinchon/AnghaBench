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
struct q6v5 {int dump_mba_loaded; int /*<<< orphan*/  q6v5; int /*<<< orphan*/  active_pd_count; int /*<<< orphan*/  active_pds; int /*<<< orphan*/  proxy_pd_count; int /*<<< orphan*/  proxy_pds; int /*<<< orphan*/  proxy_reg_count; int /*<<< orphan*/  proxy_regs; int /*<<< orphan*/  proxy_clk_count; int /*<<< orphan*/  proxy_clks; int /*<<< orphan*/  dev; int /*<<< orphan*/  active_reg_count; int /*<<< orphan*/  active_regs; int /*<<< orphan*/  reset_clk_count; int /*<<< orphan*/  reset_clks; int /*<<< orphan*/  active_clk_count; int /*<<< orphan*/  active_clks; int /*<<< orphan*/  mba_size; int /*<<< orphan*/  mba_phys; int /*<<< orphan*/  mba_perm; int /*<<< orphan*/  halt_nc; int /*<<< orphan*/  halt_map; int /*<<< orphan*/  halt_modem; int /*<<< orphan*/  halt_q6; scalar_t__ rmb_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ RMB_MBA_IMAGE_REG ; 
 int RMB_MBA_XPU_UNLOCKED ; 
 int RMB_MBA_XPU_UNLOCKED_SCRIBBLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct q6v5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct q6v5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct q6v5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct q6v5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct q6v5*) ; 
 int FUNC8 (struct q6v5*) ; 
 int FUNC9 (struct q6v5*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct q6v5*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct q6v5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct q6v5*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct q6v5 *qproc)
{
	int ret;
	int xfermemop_ret;

	FUNC13(&qproc->q6v5);

	ret = FUNC4(qproc, qproc->active_pds, qproc->active_pd_count);
	if (ret < 0) {
		FUNC0(qproc->dev, "failed to enable active power domains\n");
		goto disable_irqs;
	}

	ret = FUNC4(qproc, qproc->proxy_pds, qproc->proxy_pd_count);
	if (ret < 0) {
		FUNC0(qproc->dev, "failed to enable proxy power domains\n");
		goto disable_active_pds;
	}

	ret = FUNC6(qproc, qproc->proxy_regs,
				    qproc->proxy_reg_count);
	if (ret) {
		FUNC0(qproc->dev, "failed to enable proxy supplies\n");
		goto disable_proxy_pds;
	}

	ret = FUNC2(qproc->dev, qproc->proxy_clks,
			      qproc->proxy_clk_count);
	if (ret) {
		FUNC0(qproc->dev, "failed to enable proxy clocks\n");
		goto disable_proxy_reg;
	}

	ret = FUNC6(qproc, qproc->active_regs,
				    qproc->active_reg_count);
	if (ret) {
		FUNC0(qproc->dev, "failed to enable supplies\n");
		goto disable_proxy_clk;
	}

	ret = FUNC2(qproc->dev, qproc->reset_clks,
			      qproc->reset_clk_count);
	if (ret) {
		FUNC0(qproc->dev, "failed to enable reset clocks\n");
		goto disable_vdd;
	}

	ret = FUNC8(qproc);
	if (ret) {
		FUNC0(qproc->dev, "failed to deassert mss restart\n");
		goto disable_reset_clks;
	}

	ret = FUNC2(qproc->dev, qproc->active_clks,
			      qproc->active_clk_count);
	if (ret) {
		FUNC0(qproc->dev, "failed to enable clocks\n");
		goto assert_reset;
	}

	/* Assign MBA image access in DDR to q6 */
	ret = FUNC10(qproc, &qproc->mba_perm, true,
				      qproc->mba_phys, qproc->mba_size);
	if (ret) {
		FUNC0(qproc->dev,
			"assigning Q6 access to mba memory failed: %d\n", ret);
		goto disable_active_clks;
	}

	FUNC15(qproc->mba_phys, qproc->rmb_base + RMB_MBA_IMAGE_REG);

	ret = FUNC12(qproc);
	if (ret)
		goto reclaim_mba;

	ret = FUNC9(qproc, 0, 5000);
	if (ret == -ETIMEDOUT) {
		FUNC0(qproc->dev, "MBA boot timed out\n");
		goto halt_axi_ports;
	} else if (ret != RMB_MBA_XPU_UNLOCKED &&
		   ret != RMB_MBA_XPU_UNLOCKED_SCRIBBLED) {
		FUNC0(qproc->dev, "MBA returned unexpected status %d\n", ret);
		ret = -EINVAL;
		goto halt_axi_ports;
	}

	qproc->dump_mba_loaded = true;
	return 0;

halt_axi_ports:
	FUNC11(qproc, qproc->halt_map, qproc->halt_q6);
	FUNC11(qproc, qproc->halt_map, qproc->halt_modem);
	FUNC11(qproc, qproc->halt_map, qproc->halt_nc);

reclaim_mba:
	xfermemop_ret = FUNC10(qproc, &qproc->mba_perm, false,
						qproc->mba_phys,
						qproc->mba_size);
	if (xfermemop_ret) {
		FUNC0(qproc->dev,
			"Failed to reclaim mba buffer, system may become unstable\n");
	}

disable_active_clks:
	FUNC1(qproc->dev, qproc->active_clks,
			 qproc->active_clk_count);
assert_reset:
	FUNC7(qproc);
disable_reset_clks:
	FUNC1(qproc->dev, qproc->reset_clks,
			 qproc->reset_clk_count);
disable_vdd:
	FUNC5(qproc, qproc->active_regs,
			       qproc->active_reg_count);
disable_proxy_clk:
	FUNC1(qproc->dev, qproc->proxy_clks,
			 qproc->proxy_clk_count);
disable_proxy_reg:
	FUNC5(qproc, qproc->proxy_regs,
			       qproc->proxy_reg_count);
disable_proxy_pds:
	FUNC3(qproc, qproc->proxy_pds, qproc->proxy_pd_count);
disable_active_pds:
	FUNC3(qproc, qproc->active_pds, qproc->active_pd_count);
disable_irqs:
	FUNC14(&qproc->q6v5);

	return ret;
}