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
struct rcar_gen3_chan {int /*<<< orphan*/  is_otg_channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int PHY_MODE_USB_DEVICE ; 
 int PHY_MODE_USB_HOST ; 
 struct rcar_gen3_chan* FUNC0 (struct device*) ; 
 int FUNC1 (struct rcar_gen3_chan*) ; 
 int FUNC2 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct rcar_gen3_chan *ch = FUNC0(dev);
	bool is_b_device;
	enum phy_mode cur_mode, new_mode;

	if (!ch->is_otg_channel || !FUNC7(ch))
		return -EIO;

	if (!FUNC9(buf, "host", FUNC8("host")))
		new_mode = PHY_MODE_USB_HOST;
	else if (!FUNC9(buf, "peripheral", FUNC8("peripheral")))
		new_mode = PHY_MODE_USB_DEVICE;
	else
		return -EINVAL;

	/* is_b_device: true is B-Device. false is A-Device. */
	is_b_device = FUNC1(ch);
	cur_mode = FUNC2(ch);

	/* If current and new mode is the same, this returns the error */
	if (cur_mode == new_mode)
		return -EINVAL;

	if (new_mode == PHY_MODE_USB_HOST) { /* And is_host must be false */
		if (!is_b_device)	/* A-Peripheral */
			FUNC6(ch);
		else			/* B-Peripheral */
			FUNC4(ch);
	} else {			/* And is_host must be true */
		if (!is_b_device)	/* A-Host */
			FUNC3(ch);
		else			/* B-Host */
			FUNC5(ch);
	}

	return count;
}