#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int pd_revision; void* data; void* type; int /*<<< orphan*/  dr_set; int /*<<< orphan*/  pr_set; int /*<<< orphan*/  prefer_role; int /*<<< orphan*/  revision; } ;
struct tps6598x {int i2c_protocol; int /*<<< orphan*/  port; TYPE_1__ typec_cap; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TPS_PORTINFO_DRP_DFP 134 
#define  TPS_PORTINFO_DRP_DFP_DRD 133 
#define  TPS_PORTINFO_DRP_UFP 132 
#define  TPS_PORTINFO_DRP_UFP_DRD 131 
#define  TPS_PORTINFO_SINK 130 
#define  TPS_PORTINFO_SINK_ACCESSORY 129 
#define  TPS_PORTINFO_SOURCE 128 
 int /*<<< orphan*/  TPS_REG_STATUS ; 
 int /*<<< orphan*/  TPS_REG_SYSTEM_CONF ; 
 int /*<<< orphan*/  TPS_REG_VID ; 
 int TPS_STATUS_PLUG_PRESENT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  TYPEC_NO_PREFERRED_ROLE ; 
 void* TYPEC_PORT_DFP ; 
 void* TYPEC_PORT_DRD ; 
 void* TYPEC_PORT_DRP ; 
 void* TYPEC_PORT_SNK ; 
 void* TYPEC_PORT_SRC ; 
 void* TYPEC_PORT_UFP ; 
 int /*<<< orphan*/  USB_TYPEC_REV_1_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tps6598x* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct tps6598x*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct tps6598x*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tps6598x*) ; 
 int FUNC12 (struct tps6598x*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tps6598x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tps6598x_dr_set ; 
 int /*<<< orphan*/  tps6598x_interrupt ; 
 int /*<<< orphan*/  tps6598x_pr_set ; 
 int FUNC14 (struct tps6598x*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  tps6598x_regmap_config ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client)
{
	struct tps6598x *tps;
	u32 status;
	u32 conf;
	u32 vid;
	int ret;

	tps = FUNC5(&client->dev, sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	FUNC10(&tps->lock);
	tps->dev = &client->dev;

	tps->regmap = FUNC6(client, &tps6598x_regmap_config);
	if (FUNC0(tps->regmap))
		return FUNC1(tps->regmap);

	ret = FUNC14(tps, TPS_REG_VID, &vid);
	if (ret < 0 || !vid)
		return -ENODEV;

	/*
	 * Checking can the adapter handle SMBus protocol. If it can not, the
	 * driver needs to take care of block reads separately.
	 *
	 * FIXME: Testing with I2C_FUNC_I2C. regmap-i2c uses I2C protocol
	 * unconditionally if the adapter has I2C_FUNC_I2C set.
	 */
	if (FUNC8(client->adapter, I2C_FUNC_I2C))
		tps->i2c_protocol = true;

	/* Make sure the controller has application firmware running */
	ret = FUNC11(tps);
	if (ret)
		return ret;

	ret = FUNC14(tps, TPS_REG_STATUS, &status);
	if (ret < 0)
		return ret;

	ret = FUNC14(tps, TPS_REG_SYSTEM_CONF, &conf);
	if (ret < 0)
		return ret;

	tps->typec_cap.revision = USB_TYPEC_REV_1_2;
	tps->typec_cap.pd_revision = 0x200;
	tps->typec_cap.prefer_role = TYPEC_NO_PREFERRED_ROLE;
	tps->typec_cap.pr_set = tps6598x_pr_set;
	tps->typec_cap.dr_set = tps6598x_dr_set;

	switch (FUNC2(conf)) {
	case TPS_PORTINFO_SINK_ACCESSORY:
	case TPS_PORTINFO_SINK:
		tps->typec_cap.type = TYPEC_PORT_SNK;
		tps->typec_cap.data = TYPEC_PORT_UFP;
		break;
	case TPS_PORTINFO_DRP_UFP_DRD:
	case TPS_PORTINFO_DRP_DFP_DRD:
		tps->typec_cap.type = TYPEC_PORT_DRP;
		tps->typec_cap.data = TYPEC_PORT_DRD;
		break;
	case TPS_PORTINFO_DRP_UFP:
		tps->typec_cap.type = TYPEC_PORT_DRP;
		tps->typec_cap.data = TYPEC_PORT_UFP;
		break;
	case TPS_PORTINFO_DRP_DFP:
		tps->typec_cap.type = TYPEC_PORT_DRP;
		tps->typec_cap.data = TYPEC_PORT_DFP;
		break;
	case TPS_PORTINFO_SOURCE:
		tps->typec_cap.type = TYPEC_PORT_SRC;
		tps->typec_cap.data = TYPEC_PORT_DFP;
		break;
	default:
		return -ENODEV;
	}

	tps->port = FUNC15(&client->dev, &tps->typec_cap);
	if (FUNC0(tps->port))
		return FUNC1(tps->port);

	if (status & TPS_STATUS_PLUG_PRESENT) {
		ret = FUNC12(tps, status);
		if (ret)
			FUNC3(&client->dev, "failed to register partner\n");
	}

	ret = FUNC7(&client->dev, client->irq, NULL,
					tps6598x_interrupt,
					IRQF_SHARED | IRQF_ONESHOT,
					FUNC4(&client->dev), tps);
	if (ret) {
		FUNC13(tps, 0);
		FUNC16(tps->port);
		return ret;
	}

	FUNC9(client, tps);

	return 0;
}