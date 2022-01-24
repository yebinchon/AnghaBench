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
struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int /*<<< orphan*/ * dev; int /*<<< orphan*/  sysmon; int /*<<< orphan*/  ssr_subdev; int /*<<< orphan*/  glink_subdev; int /*<<< orphan*/  q6v5; struct rproc* rproc; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct adsp_pil_data {int /*<<< orphan*/  ssctl_id; int /*<<< orphan*/  sysmon_name; int /*<<< orphan*/  ssr_name; int /*<<< orphan*/  crash_reason_smem; int /*<<< orphan*/  clk_ids; int /*<<< orphan*/  firmware_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qcom_adsp*) ; 
 int FUNC3 (struct qcom_adsp*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qcom_adsp*,struct platform_device*) ; 
 int FUNC5 (struct qcom_adsp*) ; 
 int /*<<< orphan*/  adsp_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct adsp_pil_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct qcom_adsp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct rproc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct rproc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_adsp_pil_handover ; 
 int FUNC14 (int /*<<< orphan*/ *,struct platform_device*,struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct rproc*) ; 
 struct rproc* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rproc*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct adsp_pil_data *desc;
	struct qcom_adsp *adsp;
	struct rproc *rproc;
	int ret;

	desc = FUNC7(&pdev->dev);
	if (!desc)
		return -EINVAL;

	rproc = FUNC16(&pdev->dev, pdev->name, &adsp_ops,
			    desc->firmware_name, sizeof(*adsp));
	if (!rproc) {
		FUNC6(&pdev->dev, "unable to allocate remoteproc\n");
		return -ENOMEM;
	}

	adsp = (struct qcom_adsp *)rproc->priv;
	adsp->dev = &pdev->dev;
	adsp->rproc = rproc;
	FUNC8(pdev, adsp);

	ret = FUNC2(adsp);
	if (ret)
		goto free_rproc;

	ret = FUNC3(adsp, desc->clk_ids);
	if (ret)
		goto free_rproc;

	FUNC10(adsp->dev);

	ret = FUNC5(adsp);
	if (ret)
		goto disable_pm;

	ret = FUNC4(adsp, pdev);
	if (ret)
		goto disable_pm;

	ret = FUNC14(&adsp->q6v5, pdev, rproc, desc->crash_reason_smem,
			     qcom_adsp_pil_handover);
	if (ret)
		goto disable_pm;

	FUNC11(rproc, &adsp->glink_subdev);
	FUNC12(rproc, &adsp->ssr_subdev, desc->ssr_name);
	adsp->sysmon = FUNC13(rproc,
					      desc->sysmon_name,
					      desc->ssctl_id);
	if (FUNC0(adsp->sysmon)) {
		ret = FUNC1(adsp->sysmon);
		goto disable_pm;
	}

	ret = FUNC15(rproc);
	if (ret)
		goto disable_pm;

	return 0;

disable_pm:
	FUNC9(adsp->dev);
free_rproc:
	FUNC17(rproc);

	return ret;
}