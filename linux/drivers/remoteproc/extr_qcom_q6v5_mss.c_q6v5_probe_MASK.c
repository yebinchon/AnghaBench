#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rproc_hexagon_res {char* hexagon_mba_image; scalar_t__ need_mem_protection; int /*<<< orphan*/  version; int /*<<< orphan*/  has_alt_reset; int /*<<< orphan*/  proxy_pd_names; int /*<<< orphan*/  active_pd_names; int /*<<< orphan*/  active_supply; int /*<<< orphan*/  proxy_supply; int /*<<< orphan*/  active_clk_names; int /*<<< orphan*/  reset_clk_names; int /*<<< orphan*/  proxy_clk_names; } ;
struct rproc {int auto_boot; scalar_t__ priv; } ;
struct q6v5 {char* hexagon_mdt_image; int proxy_clk_count; int reset_clk_count; int active_clk_count; int proxy_reg_count; int active_reg_count; int active_pd_count; int proxy_pd_count; int /*<<< orphan*/  active_pds; int /*<<< orphan*/  proxy_pds; int /*<<< orphan*/  sysmon; int /*<<< orphan*/  ssr_subdev; int /*<<< orphan*/  smd_subdev; int /*<<< orphan*/  glink_subdev; void* mba_perm; void* mpss_perm; int /*<<< orphan*/  q6v5; scalar_t__ need_mem_protection; int /*<<< orphan*/  version; int /*<<< orphan*/  has_alt_reset; int /*<<< orphan*/  active_regs; int /*<<< orphan*/  proxy_regs; int /*<<< orphan*/  active_clks; int /*<<< orphan*/  reset_clks; int /*<<< orphan*/  proxy_clks; struct rproc* rproc; TYPE_1__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPSS_CRASH_REASON_SMEM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QCOM_SCM_VMID_HLOS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct rproc_hexagon_res* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct q6v5*) ; 
 int FUNC7 (struct q6v5*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct q6v5*,struct platform_device*) ; 
 int FUNC10 (struct q6v5*) ; 
 int /*<<< orphan*/  q6v5_ops ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct q6v5*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rproc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct rproc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct rproc*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct rproc*,char*,int) ; 
 int /*<<< orphan*/  qcom_msa_handover ; 
 int FUNC18 (int /*<<< orphan*/ *,struct platform_device*,struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (struct rproc*) ; 
 struct rproc* FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct rproc*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	const struct rproc_hexagon_res *desc;
	struct q6v5 *qproc;
	struct rproc *rproc;
	const char *mba_image;
	int ret;

	desc = FUNC4(&pdev->dev);
	if (!desc)
		return -EINVAL;

	if (desc->need_mem_protection && !FUNC19())
		return -EPROBE_DEFER;

	mba_image = desc->hexagon_mba_image;
	ret = FUNC5(pdev->dev.of_node, "firmware-name",
					    0, &mba_image);
	if (ret < 0 && ret != -EINVAL)
		return ret;

	rproc = FUNC21(&pdev->dev, pdev->name, &q6v5_ops,
			    mba_image, sizeof(*qproc));
	if (!rproc) {
		FUNC3(&pdev->dev, "failed to allocate rproc\n");
		return -ENOMEM;
	}

	rproc->auto_boot = false;

	qproc = (struct q6v5 *)rproc->priv;
	qproc->dev = &pdev->dev;
	qproc->rproc = rproc;
	qproc->hexagon_mdt_image = "modem.mdt";
	ret = FUNC5(pdev->dev.of_node, "firmware-name",
					    1, &qproc->hexagon_mdt_image);
	if (ret < 0 && ret != -EINVAL)
		return ret;

	FUNC6(pdev, qproc);

	ret = FUNC9(qproc, pdev);
	if (ret)
		goto free_rproc;

	ret = FUNC7(qproc);
	if (ret)
		goto free_rproc;

	ret = FUNC8(&pdev->dev, qproc->proxy_clks,
			       desc->proxy_clk_names);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get proxy clocks.\n");
		goto free_rproc;
	}
	qproc->proxy_clk_count = ret;

	ret = FUNC8(&pdev->dev, qproc->reset_clks,
			       desc->reset_clk_names);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get reset clocks.\n");
		goto free_rproc;
	}
	qproc->reset_clk_count = ret;

	ret = FUNC8(&pdev->dev, qproc->active_clks,
			       desc->active_clk_names);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get active clocks.\n");
		goto free_rproc;
	}
	qproc->active_clk_count = ret;

	ret = FUNC13(&pdev->dev, qproc->proxy_regs,
				  desc->proxy_supply);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get proxy regulators.\n");
		goto free_rproc;
	}
	qproc->proxy_reg_count = ret;

	ret = FUNC13(&pdev->dev,  qproc->active_regs,
				  desc->active_supply);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get active regulators.\n");
		goto free_rproc;
	}
	qproc->active_reg_count = ret;

	ret = FUNC11(&pdev->dev, qproc->active_pds,
			      desc->active_pd_names);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to attach active power domains\n");
		goto free_rproc;
	}
	qproc->active_pd_count = ret;

	ret = FUNC11(&pdev->dev, qproc->proxy_pds,
			      desc->proxy_pd_names);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to init power domains\n");
		goto detach_active_pds;
	}
	qproc->proxy_pd_count = ret;

	qproc->has_alt_reset = desc->has_alt_reset;
	ret = FUNC10(qproc);
	if (ret)
		goto detach_proxy_pds;

	qproc->version = desc->version;
	qproc->need_mem_protection = desc->need_mem_protection;

	ret = FUNC18(&qproc->q6v5, pdev, rproc, MPSS_CRASH_REASON_SMEM,
			     qcom_msa_handover);
	if (ret)
		goto detach_proxy_pds;

	qproc->mpss_perm = FUNC0(QCOM_SCM_VMID_HLOS);
	qproc->mba_perm = FUNC0(QCOM_SCM_VMID_HLOS);
	FUNC14(rproc, &qproc->glink_subdev);
	FUNC15(rproc, &qproc->smd_subdev);
	FUNC16(rproc, &qproc->ssr_subdev, "mpss");
	qproc->sysmon = FUNC17(rproc, "modem", 0x12);
	if (FUNC1(qproc->sysmon)) {
		ret = FUNC2(qproc->sysmon);
		goto detach_proxy_pds;
	}

	ret = FUNC20(rproc);
	if (ret)
		goto detach_proxy_pds;

	return 0;

detach_proxy_pds:
	FUNC12(qproc, qproc->proxy_pds, qproc->proxy_pd_count);
detach_active_pds:
	FUNC12(qproc, qproc->active_pds, qproc->active_pd_count);
free_rproc:
	FUNC22(rproc);

	return ret;
}