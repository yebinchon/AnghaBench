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
struct typec_switch_desc {int /*<<< orphan*/  set; int /*<<< orphan*/  fwnode; struct pi3usb30532* drvdata; } ;
struct typec_mux_desc {int /*<<< orphan*/  set; int /*<<< orphan*/  fwnode; struct pi3usb30532* drvdata; } ;
struct pi3usb30532 {int conf; int /*<<< orphan*/  mux; int /*<<< orphan*/  sw; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct device {int /*<<< orphan*/  fwnode; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI3USB30532_CONF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct pi3usb30532* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct pi3usb30532*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pi3usb30532_mux_set ; 
 int /*<<< orphan*/  pi3usb30532_sw_set ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct typec_mux_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct typec_switch_desc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct typec_switch_desc sw_desc;
	struct typec_mux_desc mux_desc;
	struct pi3usb30532 *pi;
	int ret;

	pi = FUNC3(dev, sizeof(*pi), GFP_KERNEL);
	if (!pi)
		return -ENOMEM;

	pi->client = client;
	FUNC6(&pi->lock);

	ret = FUNC5(client, PI3USB30532_CONF);
	if (ret < 0) {
		FUNC2(dev, "Error reading config register %d\n", ret);
		return ret;
	}
	pi->conf = ret;

	sw_desc.drvdata = pi;
	sw_desc.fwnode = dev->fwnode;
	sw_desc.set = pi3usb30532_sw_set;

	pi->sw = FUNC8(dev, &sw_desc);
	if (FUNC0(pi->sw)) {
		FUNC2(dev, "Error registering typec switch: %ld\n",
			FUNC1(pi->sw));
		return FUNC1(pi->sw);
	}

	mux_desc.drvdata = pi;
	mux_desc.fwnode = dev->fwnode;
	mux_desc.set = pi3usb30532_mux_set;

	pi->mux = FUNC7(dev, &mux_desc);
	if (FUNC0(pi->mux)) {
		FUNC9(pi->sw);
		FUNC2(dev, "Error registering typec mux: %ld\n",
			FUNC1(pi->mux));
		return FUNC1(pi->mux);
	}

	FUNC4(client, pi);
	return 0;
}