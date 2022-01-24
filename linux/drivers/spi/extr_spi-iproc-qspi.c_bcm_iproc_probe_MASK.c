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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct bcm_qspi_soc_intc {int /*<<< orphan*/  bcm_qspi_get_int_status; int /*<<< orphan*/  (* bcm_qspi_int_set ) (struct bcm_qspi_soc_intc*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* bcm_qspi_int_ack ) (struct bcm_qspi_soc_intc*,int /*<<< orphan*/ ) ;} ;
struct bcm_iproc_intc {int /*<<< orphan*/  big_endian; void* int_status_reg; void* int_reg; int /*<<< orphan*/  soclock; struct platform_device* pdev; struct bcm_qspi_soc_intc soc_intc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MSPI_BSPI_DONE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  bcm_iproc_qspi_get_l2_int_status ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_qspi_soc_intc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_qspi_soc_intc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct platform_device*,struct bcm_qspi_soc_intc*) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 struct bcm_iproc_intc* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm_iproc_intc *priv;
	struct bcm_qspi_soc_intc *soc_intc;
	struct resource *res;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	soc_intc = &priv->soc_intc;
	priv->pdev = pdev;

	FUNC9(&priv->soclock);

	res = FUNC8(pdev, IORESOURCE_MEM, "intr_regs");
	priv->int_reg = FUNC5(dev, res);
	if (FUNC0(priv->int_reg))
		return FUNC1(priv->int_reg);

	res = FUNC8(pdev, IORESOURCE_MEM,
					   "intr_status_reg");
	priv->int_status_reg = FUNC5(dev, res);
	if (FUNC0(priv->int_status_reg))
		return FUNC1(priv->int_status_reg);

	priv->big_endian = FUNC7(dev->of_node);

	FUNC2(soc_intc, MSPI_BSPI_DONE);
	FUNC3(soc_intc, MSPI_BSPI_DONE, false);

	soc_intc->bcm_qspi_int_ack = bcm_iproc_qspi_int_ack;
	soc_intc->bcm_qspi_int_set = bcm_iproc_qspi_int_set;
	soc_intc->bcm_qspi_get_int_status = bcm_iproc_qspi_get_l2_int_status;

	return FUNC4(pdev, soc_intc);
}