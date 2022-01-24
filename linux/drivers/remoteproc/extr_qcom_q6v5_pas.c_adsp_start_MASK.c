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
struct qcom_adsp {int /*<<< orphan*/  xo; int /*<<< orphan*/  aggre2_clk; int /*<<< orphan*/  cx_supply; int /*<<< orphan*/  px_supply; int /*<<< orphan*/  pas_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  q6v5; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rproc *rproc)
{
	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
	int ret;

	FUNC4(&adsp->q6v5);

	ret = FUNC1(adsp->xo);
	if (ret)
		return ret;

	ret = FUNC1(adsp->aggre2_clk);
	if (ret)
		goto disable_xo_clk;

	ret = FUNC9(adsp->cx_supply);
	if (ret)
		goto disable_aggre2_clk;

	ret = FUNC9(adsp->px_supply);
	if (ret)
		goto disable_cx_supply;

	ret = FUNC6(adsp->pas_id);
	if (ret) {
		FUNC2(adsp->dev,
			"failed to authenticate image and release reset\n");
		goto disable_px_supply;
	}

	ret = FUNC5(&adsp->q6v5, FUNC3(5000));
	if (ret == -ETIMEDOUT) {
		FUNC2(adsp->dev, "start timed out\n");
		FUNC7(adsp->pas_id);
		goto disable_px_supply;
	}

	return 0;

disable_px_supply:
	FUNC8(adsp->px_supply);
disable_cx_supply:
	FUNC8(adsp->cx_supply);
disable_aggre2_clk:
	FUNC0(adsp->aggre2_clk);
disable_xo_clk:
	FUNC0(adsp->xo);

	return ret;
}