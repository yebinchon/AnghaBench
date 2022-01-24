#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {int num; int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct sdio_device_id {int dummy; } ;
struct hwbus_priv {TYPE_2__* pdata; int /*<<< orphan*/  core; struct sdio_func* func; } ;
struct TYPE_4__ {int /*<<< orphan*/  have_5ghz; int /*<<< orphan*/  sdd_file; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  ref_clk; } ;
struct TYPE_3__ {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMC_QUIRK_LENIENT_FN0 ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hwbus_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cw1200_sdio_hwbus_ops ; 
 int FUNC1 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwbus_priv*) ; 
 TYPE_2__* global_plat_data ; 
 int /*<<< orphan*/  FUNC3 (struct hwbus_priv*) ; 
 struct hwbus_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*,struct hwbus_priv*) ; 

__attribute__((used)) static int FUNC12(struct sdio_func *func,
			     const struct sdio_device_id *id)
{
	struct hwbus_priv *self;
	int status;

	FUNC6("cw1200_wlan_sdio: Probe called\n");

	/* We are only able to handle the wlan function */
	if (func->num != 0x01)
		return -ENODEV;

	self = FUNC4(sizeof(*self), GFP_KERNEL);
	if (!self) {
		FUNC5("Can't allocate SDIO hwbus_priv.\n");
		return -ENOMEM;
	}

	func->card->quirks |= MMC_QUIRK_LENIENT_FN0;

	self->pdata = global_plat_data; /* FIXME */
	self->func = func;
	FUNC11(func, self);
	FUNC7(func);
	FUNC9(func);
	FUNC10(func);

	status = FUNC1(self);

	status = FUNC0(&cw1200_sdio_hwbus_ops,
				   self, &func->dev, &self->core,
				   self->pdata->ref_clk,
				   self->pdata->macaddr,
				   self->pdata->sdd_file,
				   self->pdata->have_5ghz);
	if (status) {
		FUNC2(self);
		FUNC7(func);
		FUNC8(func);
		FUNC10(func);
		FUNC11(func, NULL);
		FUNC3(self);
	}

	return status;
}