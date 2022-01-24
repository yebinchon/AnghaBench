#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ of_node; struct nfcmrvl_platform_data* platform_data; } ;
struct spi_device {TYPE_2__ dev; } ;
struct nfcmrvl_spi_drv_data {int /*<<< orphan*/  handshake_completion; TYPE_1__* priv; struct spi_device* spi; int /*<<< orphan*/  nci_spi; } ;
struct nfcmrvl_platform_data {int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {int support_fw_dnld; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NFCMRVL_PHY_SPI ; 
 int FUNC1 (TYPE_1__*) ; 
 struct nfcmrvl_spi_drv_data* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct nfcmrvl_spi_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,struct nfcmrvl_spi_drv_data*,int /*<<< orphan*/ *,TYPE_2__*,struct nfcmrvl_platform_data*) ; 
 int /*<<< orphan*/  nfcmrvl_spi_int_irq_thread_fn ; 
 scalar_t__ FUNC8 (scalar_t__,struct nfcmrvl_platform_data*) ; 
 int /*<<< orphan*/  spi_ops ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct nfcmrvl_spi_drv_data*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct nfcmrvl_platform_data *pdata;
	struct nfcmrvl_platform_data config;
	struct nfcmrvl_spi_drv_data *drv_data;
	int ret = 0;

	drv_data = FUNC2(&spi->dev, sizeof(*drv_data), GFP_KERNEL);
	if (!drv_data)
		return -ENOMEM;

	drv_data->spi = spi;
	drv_data->priv = NULL;
	FUNC9(spi, drv_data);

	pdata = spi->dev.platform_data;

	if (!pdata && spi->dev.of_node)
		if (FUNC8(spi->dev.of_node, &config) == 0)
			pdata = &config;

	if (!pdata)
		return -EINVAL;

	ret = FUNC3(&drv_data->spi->dev, pdata->irq,
					NULL, nfcmrvl_spi_int_irq_thread_fn,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					"nfcmrvl_spi_int", drv_data);
	if (ret < 0) {
		FUNC6(&drv_data->spi->dev, "Unable to register IRQ handler");
		return -ENODEV;
	}

	drv_data->priv = FUNC7(NFCMRVL_PHY_SPI,
						  drv_data, &spi_ops,
						  &drv_data->spi->dev,
						  pdata);
	if (FUNC0(drv_data->priv))
		return FUNC1(drv_data->priv);

	drv_data->priv->support_fw_dnld = true;

	drv_data->nci_spi = FUNC5(drv_data->spi, 0, 10,
						 drv_data->priv->ndev);

	/* Init completion for slave handshake */
	FUNC4(&drv_data->handshake_completion);
	return 0;
}