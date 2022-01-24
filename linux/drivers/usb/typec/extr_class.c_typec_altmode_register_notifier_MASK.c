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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct typec_device_id {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct typec_altmode {int dummy; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;
struct altmode {struct typec_altmode adev; int /*<<< orphan*/  nh; } ;

/* Variables and functions */
 int ENODEV ; 
 struct typec_altmode* FUNC0 (struct device*) ; 
 struct typec_altmode* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  altmode_match ; 
 int FUNC3 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct device*,struct typec_device_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct altmode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  typec_port_match ; 

struct typec_altmode *
FUNC9(struct device *dev, u16 svid, u8 mode,
				struct notifier_block *nb)
{
	struct typec_device_id id = { svid, mode, };
	struct device *altmode_dev;
	struct device *port_dev;
	struct altmode *altmode;
	int ret;

	/* Find the port linked to the caller */
	port_dev = FUNC4(dev, NULL, NULL,
						typec_port_match);
	if (FUNC2(port_dev))
		return port_dev ? FUNC0(port_dev) : FUNC1(-ENODEV);

	/* Find the altmode with matching svid */
	altmode_dev = FUNC5(port_dev, &id, altmode_match);

	FUNC6(port_dev);

	if (!altmode_dev)
		return FUNC1(-ENODEV);

	altmode = FUNC7(FUNC8(altmode_dev));

	/* Register notifier */
	ret = FUNC3(&altmode->nh, nb);
	if (ret) {
		FUNC6(altmode_dev);
		return FUNC1(ret);
	}

	return &altmode->adev;
}