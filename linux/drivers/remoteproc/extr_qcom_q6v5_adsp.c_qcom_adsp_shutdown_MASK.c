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
struct qcom_adsp {int /*<<< orphan*/  restart; int /*<<< orphan*/  pdc_sync_reset; scalar_t__ halt_lpass; int /*<<< orphan*/  halt_map; int /*<<< orphan*/  dev; int /*<<< orphan*/  clks; int /*<<< orphan*/  num_clks; scalar_t__ qdsp6ss_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_TIMEOUT ; 
 scalar_t__ LPASS_HALTACK_REG ; 
 scalar_t__ LPASS_HALTREQ_REG ; 
 scalar_t__ LPASS_MASTER_IDLE_REG ; 
 scalar_t__ LPASS_PWR_ON_REG ; 
 scalar_t__ RET_CFG_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct qcom_adsp *adsp)
{
	unsigned long timeout;
	unsigned int val;
	int ret;

	/* Reset the retention logic */
	val = FUNC3(adsp->qdsp6ss_base + RET_CFG_REG);
	val |= 0x1;
	FUNC10(val, adsp->qdsp6ss_base + RET_CFG_REG);

	FUNC0(adsp->num_clks, adsp->clks);

	/* QDSP6 master port needs to be explicitly halted */
	ret = FUNC4(adsp->halt_map,
			adsp->halt_lpass + LPASS_PWR_ON_REG, &val);
	if (ret || !val)
		goto reset;

	ret = FUNC4(adsp->halt_map,
			adsp->halt_lpass + LPASS_MASTER_IDLE_REG,
			&val);
	if (ret || val)
		goto reset;

	FUNC5(adsp->halt_map,
			adsp->halt_lpass + LPASS_HALTREQ_REG, 1);

	/* Wait for halt ACK from QDSP6 */
	timeout = jiffies + FUNC2(ACK_TIMEOUT);
	for (;;) {
		ret = FUNC4(adsp->halt_map,
			adsp->halt_lpass + LPASS_HALTACK_REG, &val);
		if (ret || val || FUNC8(jiffies, timeout))
			break;

		FUNC9(1000, 1100);
	}

	ret = FUNC4(adsp->halt_map,
			adsp->halt_lpass + LPASS_MASTER_IDLE_REG, &val);
	if (ret || !val)
		FUNC1(adsp->dev, "port failed halt\n");

reset:
	/* Assert the LPASS PDC Reset */
	FUNC6(adsp->pdc_sync_reset);
	/* Place the LPASS processor into reset */
	FUNC6(adsp->restart);
	/* wait after asserting subsystem restart from AOSS */
	FUNC9(200, 300);

	/* Clear the halt request for the AXIM and AHBM for Q6 */
	FUNC5(adsp->halt_map, adsp->halt_lpass + LPASS_HALTREQ_REG, 0);

	/* De-assert the LPASS PDC Reset */
	FUNC7(adsp->pdc_sync_reset);
	/* Remove the LPASS reset */
	FUNC7(adsp->restart);
	/* wait after de-asserting subsystem restart from AOSS */
	FUNC9(200, 300);

	return 0;
}