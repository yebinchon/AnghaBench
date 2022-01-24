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
struct rproc {struct imx_rproc* priv; } ;
struct platform_device {int dummy; } ;
struct imx_rproc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rproc* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rproc*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct rproc *rproc = FUNC1(pdev);
	struct imx_rproc *priv = rproc->priv;

	FUNC0(priv->clk);
	FUNC2(rproc);
	FUNC3(rproc);

	return 0;
}