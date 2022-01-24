#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct dcon_priv {int bl_val; TYPE_1__ reboot_nb; int /*<<< orphan*/ * bl_dev; int /*<<< orphan*/  fbinfo; int /*<<< orphan*/  switch_source; int /*<<< orphan*/  waitq; struct i2c_client* client; } ;
struct TYPE_11__ {int brightness; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DCON_IRQ ; 
 int /*<<< orphan*/  DCON_REG_BRIGHT ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ *,struct dcon_priv*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  dcon_bl_ops ; 
 TYPE_7__ dcon_bl_props ; 
 TYPE_2__* dcon_device ; 
 int /*<<< orphan*/ * dcon_device_files ; 
 int FUNC6 (struct dcon_priv*,int) ; 
 int /*<<< orphan*/  dcon_panic_nb ; 
 int FUNC7 (struct dcon_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcon_reboot_notify ; 
 int /*<<< orphan*/  dcon_source_switch ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct dcon_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct dcon_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dcon_priv*) ; 
 struct dcon_priv* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int num_registered_fb ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 int /*<<< orphan*/  pdata ; 
 int FUNC16 (TYPE_2__*) ; 
 TYPE_2__* FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,struct dcon_priv*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/ * registered_fb ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct dcon_priv *dcon;
	int rc, i, j;

	if (!pdata)
		return -ENXIO;

	dcon = FUNC15(sizeof(*dcon), GFP_KERNEL);
	if (!dcon)
		return -ENOMEM;

	dcon->client = client;
	FUNC13(&dcon->waitq);
	FUNC1(&dcon->switch_source, dcon_source_switch);
	dcon->reboot_nb.notifier_call = dcon_reboot_notify;
	dcon->reboot_nb.priority = -1;

	FUNC12(client, dcon);

	if (num_registered_fb < 1) {
		FUNC8(&client->dev, "DCON driver requires a registered fb\n");
		rc = -EIO;
		goto einit;
	}
	dcon->fbinfo = registered_fb[0];

	rc = FUNC6(dcon, 1);
	if (rc)
		goto einit;

	/* Add the DCON device */

	dcon_device = FUNC17("dcon", -1);

	if (!dcon_device) {
		FUNC20("Unable to create the DCON device\n");
		rc = -ENOMEM;
		goto eirq;
	}
	rc = FUNC16(dcon_device);
	FUNC19(dcon_device, dcon);

	if (rc) {
		FUNC20("Unable to add the DCON device\n");
		goto edev;
	}

	for (i = 0; i < FUNC0(dcon_device_files); i++) {
		rc = FUNC9(&dcon_device->dev,
					&dcon_device_files[i]);
		if (rc) {
			FUNC8(&dcon_device->dev, "Cannot create sysfs file\n");
			goto ecreate;
		}
	}

	dcon->bl_val = FUNC7(dcon, DCON_REG_BRIGHT) & 0x0F;

	/* Add the backlight device for the DCON */
	dcon_bl_props.brightness = dcon->bl_val;
	dcon->bl_dev = FUNC5("dcon-bl", &dcon_device->dev,
						 dcon, &dcon_bl_ops,
						 &dcon_bl_props);
	if (FUNC2(dcon->bl_dev)) {
		FUNC8(&client->dev, "cannot register backlight dev (%ld)\n",
			FUNC3(dcon->bl_dev));
		dcon->bl_dev = NULL;
	}

	FUNC21(&dcon->reboot_nb);
	FUNC4(&panic_notifier_list, &dcon_panic_nb);

	return 0;

 ecreate:
	for (j = 0; j < i; j++)
		FUNC10(&dcon_device->dev, &dcon_device_files[j]);
 edev:
	FUNC18(dcon_device);
	dcon_device = NULL;
 eirq:
	FUNC11(DCON_IRQ, dcon);
 einit:
	FUNC14(dcon);
	return rc;
}