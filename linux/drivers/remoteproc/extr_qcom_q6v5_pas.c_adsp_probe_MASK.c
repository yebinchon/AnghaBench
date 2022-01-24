#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int /*<<< orphan*/  sysmon; int /*<<< orphan*/  ssr_subdev; int /*<<< orphan*/  smd_subdev; int /*<<< orphan*/  glink_subdev; int /*<<< orphan*/  q6v5; int /*<<< orphan*/  has_aggre2_clk; int /*<<< orphan*/  pas_id; struct rproc* rproc; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct adsp_data {char* firmware_name; int /*<<< orphan*/  ssctl_id; int /*<<< orphan*/  sysmon_name; int /*<<< orphan*/  ssr_name; int /*<<< orphan*/  crash_reason_smem; int /*<<< orphan*/  has_aggre2_clk; int /*<<< orphan*/  pas_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qcom_adsp*) ; 
 int FUNC3 (struct qcom_adsp*) ; 
 int FUNC4 (struct qcom_adsp*) ; 
 int /*<<< orphan*/  adsp_ops ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct adsp_data* FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct qcom_adsp*) ; 
 int /*<<< orphan*/  FUNC9 (struct rproc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rproc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct rproc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_pas_handover ; 
 int FUNC13 (int /*<<< orphan*/ *,struct platform_device*,struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct rproc*) ; 
 struct rproc* FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rproc*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct adsp_data *desc;
	struct qcom_adsp *adsp;
	struct rproc *rproc;
	const char *fw_name;
	int ret;

	desc = FUNC6(&pdev->dev);
	if (!desc)
		return -EINVAL;

	if (!FUNC14())
		return -EPROBE_DEFER;

	fw_name = desc->firmware_name;
	ret = FUNC7(pdev->dev.of_node, "firmware-name",
				      &fw_name);
	if (ret < 0 && ret != -EINVAL)
		return ret;

	rproc = FUNC16(&pdev->dev, pdev->name, &adsp_ops,
			    fw_name, sizeof(*adsp));
	if (!rproc) {
		FUNC5(&pdev->dev, "unable to allocate remoteproc\n");
		return -ENOMEM;
	}

	adsp = (struct qcom_adsp *)rproc->priv;
	adsp->dev = &pdev->dev;
	adsp->rproc = rproc;
	adsp->pas_id = desc->pas_id;
	adsp->has_aggre2_clk = desc->has_aggre2_clk;
	FUNC8(pdev, adsp);

	ret = FUNC2(adsp);
	if (ret)
		goto free_rproc;

	ret = FUNC3(adsp);
	if (ret)
		goto free_rproc;

	ret = FUNC4(adsp);
	if (ret)
		goto free_rproc;

	ret = FUNC13(&adsp->q6v5, pdev, rproc, desc->crash_reason_smem,
			     qcom_pas_handover);
	if (ret)
		goto free_rproc;

	FUNC9(rproc, &adsp->glink_subdev);
	FUNC10(rproc, &adsp->smd_subdev);
	FUNC11(rproc, &adsp->ssr_subdev, desc->ssr_name);
	adsp->sysmon = FUNC12(rproc,
					      desc->sysmon_name,
					      desc->ssctl_id);
	if (FUNC0(adsp->sysmon)) {
		ret = FUNC1(adsp->sysmon);
		goto free_rproc;
	}

	ret = FUNC15(rproc);
	if (ret)
		goto free_rproc;

	return 0;

free_rproc:
	FUNC17(rproc);

	return ret;
}