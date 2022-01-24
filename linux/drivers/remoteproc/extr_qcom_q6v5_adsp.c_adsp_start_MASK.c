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
struct qcom_adsp {int mem_phys; int /*<<< orphan*/  q6v5; int /*<<< orphan*/  xo; int /*<<< orphan*/  dev; int /*<<< orphan*/  clks; int /*<<< orphan*/  num_clks; scalar_t__ qdsp6ss_base; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BOOT_CMD_REG ; 
 int /*<<< orphan*/  BOOT_FSM_TIMEOUT ; 
 scalar_t__ BOOT_STATUS_REG ; 
 scalar_t__ CORE_START_REG ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ QDSP6SS_CORE_CBCR ; 
 scalar_t__ QDSP6SS_SLEEP_CBCR ; 
 scalar_t__ QDSP6SS_XO_CBCR ; 
 scalar_t__ RST_EVB_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct rproc *rproc)
{
	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
	int ret;
	unsigned int val;

	FUNC10(&adsp->q6v5);

	ret = FUNC4(adsp->xo);
	if (ret)
		goto disable_irqs;

	FUNC6(adsp->dev, INT_MAX);
	ret = FUNC8(adsp->dev);
	if (ret)
		goto disable_xo_clk;

	ret = FUNC2(adsp->num_clks, adsp->clks);
	if (ret) {
		FUNC5(adsp->dev, "adsp clk_enable failed\n");
		goto disable_power_domain;
	}

	/* Enable the XO clock */
	FUNC14(1, adsp->qdsp6ss_base + QDSP6SS_XO_CBCR);

	/* Enable the QDSP6SS sleep clock */
	FUNC14(1, adsp->qdsp6ss_base + QDSP6SS_SLEEP_CBCR);

	/* Enable the QDSP6 core clock */
	FUNC14(1, adsp->qdsp6ss_base + QDSP6SS_CORE_CBCR);

	/* Program boot address */
	FUNC14(adsp->mem_phys >> 4, adsp->qdsp6ss_base + RST_EVB_REG);

	/* De-assert QDSP6 stop core. QDSP6 will execute after out of reset */
	FUNC14(0x1, adsp->qdsp6ss_base + CORE_START_REG);

	/* Trigger boot FSM to start QDSP6 */
	FUNC14(0x1, adsp->qdsp6ss_base + BOOT_CMD_REG);

	/* Wait for core to come out of reset */
	ret = FUNC13(adsp->qdsp6ss_base + BOOT_STATUS_REG,
			val, (val & FUNC0(0)) != 0, 10, BOOT_FSM_TIMEOUT);
	if (ret) {
		FUNC5(adsp->dev, "failed to bootup adsp\n");
		goto disable_adsp_clks;
	}

	ret = FUNC12(&adsp->q6v5, FUNC7(5 * HZ));
	if (ret == -ETIMEDOUT) {
		FUNC5(adsp->dev, "start timed out\n");
		goto disable_adsp_clks;
	}

	return 0;

disable_adsp_clks:
	FUNC1(adsp->num_clks, adsp->clks);
disable_power_domain:
	FUNC6(adsp->dev, 0);
	FUNC9(adsp->dev);
disable_xo_clk:
	FUNC3(adsp->xo);
disable_irqs:
	FUNC11(&adsp->q6v5);

	return ret;
}