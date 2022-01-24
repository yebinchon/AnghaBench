#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct st95hf_spi_context {int /*<<< orphan*/  spi_lock; int /*<<< orphan*/  done; struct spi_device* spidev; } ;
struct st95hf_context {int enable_gpio; scalar_t__ st95hf_supply; TYPE_3__* ddev; int /*<<< orphan*/  rm_lock; int /*<<< orphan*/  exchange_lock; TYPE_1__* nfcdev; int /*<<< orphan*/  fwi; struct st95hf_spi_context spicontext; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {scalar_t__ irq; TYPE_2__ dev; } ;
struct TYPE_20__ {TYPE_1__* nfc_dev; } ;
struct TYPE_18__ {TYPE_2__ dev; } ;
struct TYPE_17__ {int /*<<< orphan*/ * cmd_params; } ;

/* Variables and functions */
 size_t CMD_ISO14443A_PROTOCOL_SELECT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOF_DIR_OUT ; 
 int GPIOF_INIT_HIGH ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ST95HF_CAPABILITIES ; 
 int /*<<< orphan*/  ST95HF_HEADROOM_LEN ; 
 int /*<<< orphan*/  ST95HF_SUPPORTED_PROT ; 
 int /*<<< orphan*/  ST95HF_TAILROOM_LEN ; 
 TYPE_16__* cmd_array ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct st95hf_spi_context*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (TYPE_2__*,int,int,char*) ; 
 struct st95hf_context* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,struct st95hf_context*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  st95hf_irq_handler ; 
 int /*<<< orphan*/  st95hf_irq_thread_handler ; 
 int /*<<< orphan*/  st95hf_nfc_digital_ops ; 
 int FUNC22 (struct st95hf_context*) ; 
 int FUNC23 (struct st95hf_context*) ; 

__attribute__((used)) static int FUNC24(struct spi_device *nfc_spi_dev)
{
	int ret;

	struct st95hf_context *st95context;
	struct st95hf_spi_context *spicontext;

	FUNC17(&nfc_spi_dev->dev, "ST95HF driver probe called.\n");

	st95context = FUNC6(&nfc_spi_dev->dev,
				   sizeof(struct st95hf_context),
				   GFP_KERNEL);
	if (!st95context)
		return -ENOMEM;

	spicontext = &st95context->spicontext;

	spicontext->spidev = nfc_spi_dev;

	st95context->fwi =
		cmd_array[CMD_ISO14443A_PROTOCOL_SELECT].cmd_params[2];

	if (FUNC4(&nfc_spi_dev->dev, "st95hfvin")) {
		st95context->st95hf_supply =
			FUNC7(&nfc_spi_dev->dev,
					   "st95hfvin");
		if (FUNC0(st95context->st95hf_supply)) {
			FUNC2(&nfc_spi_dev->dev, "failed to acquire regulator\n");
			return FUNC1(st95context->st95hf_supply);
		}

		ret = FUNC20(st95context->st95hf_supply);
		if (ret) {
			FUNC2(&nfc_spi_dev->dev, "failed to enable regulator\n");
			return ret;
		}
	}

	FUNC10(&spicontext->done);
	FUNC11(&spicontext->spi_lock);

	/*
	 * Store spicontext in spi device object for using it in
	 * remove function
	 */
	FUNC3(&nfc_spi_dev->dev, spicontext);

	st95context->enable_gpio =
		FUNC18(nfc_spi_dev->dev.of_node,
				  "enable-gpio",
				  0);
	if (!FUNC9(st95context->enable_gpio)) {
		FUNC2(&nfc_spi_dev->dev, "No valid enable gpio\n");
		ret = st95context->enable_gpio;
		goto err_disable_regulator;
	}

	ret = FUNC5(&nfc_spi_dev->dev, st95context->enable_gpio,
				    GPIOF_DIR_OUT | GPIOF_INIT_HIGH,
				    "enable_gpio");
	if (ret)
		goto err_disable_regulator;

	if (nfc_spi_dev->irq > 0) {
		if (FUNC8(&nfc_spi_dev->dev,
					      nfc_spi_dev->irq,
					      st95hf_irq_handler,
					      st95hf_irq_thread_handler,
					      IRQF_TRIGGER_FALLING,
					      "st95hf",
					      (void *)st95context) < 0) {
			FUNC2(&nfc_spi_dev->dev, "err: irq request for st95hf is failed\n");
			ret =  -EINVAL;
			goto err_disable_regulator;
		}
	} else {
		FUNC2(&nfc_spi_dev->dev, "not a valid IRQ associated with ST95HF\n");
		ret = -EINVAL;
		goto err_disable_regulator;
	}

	/*
	 * First reset SPI to handle warm reset of the system.
	 * It will put the ST95HF device in Power ON state
	 * which make the state of device identical to state
	 * at the time of cold reset of the system.
	 */
	ret = FUNC23(st95context);
	if (ret) {
		FUNC2(&nfc_spi_dev->dev, "err: spi_reset_sequence failed\n");
		goto err_disable_regulator;
	}

	/* call PowerOnReset sequence of ST95hf to activate it */
	ret = FUNC22(st95context);
	if (ret) {
		FUNC2(&nfc_spi_dev->dev, "err: por seq failed for st95hf\n");
		goto err_disable_regulator;
	}

	/* create NFC dev object and register with NFC Subsystem */
	st95context->ddev = FUNC12(&st95hf_nfc_digital_ops,
							ST95HF_SUPPORTED_PROT,
							ST95HF_CAPABILITIES,
							ST95HF_HEADROOM_LEN,
							ST95HF_TAILROOM_LEN);
	if (!st95context->ddev) {
		ret = -ENOMEM;
		goto err_disable_regulator;
	}

	st95context->nfcdev = st95context->ddev->nfc_dev;
	FUNC16(st95context->ddev, &nfc_spi_dev->dev);

	ret =  FUNC14(st95context->ddev);
	if (ret) {
		FUNC2(&st95context->nfcdev->dev, "st95hf registration failed\n");
		goto err_free_digital_device;
	}

	/* store st95context in nfc device object */
	FUNC15(st95context->ddev, st95context);

	FUNC21(&st95context->exchange_lock, 1);
	FUNC11(&st95context->rm_lock);

	return ret;

err_free_digital_device:
	FUNC13(st95context->ddev);
err_disable_regulator:
	if (st95context->st95hf_supply)
		FUNC19(st95context->st95hf_supply);

	return ret;
}