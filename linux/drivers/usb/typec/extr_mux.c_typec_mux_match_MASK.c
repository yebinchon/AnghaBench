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
typedef  scalar_t__ u16 ;
struct typec_altmode_desc {scalar_t__ svid; } ;
struct device_connection {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  id; int /*<<< orphan*/ * endpoint; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 scalar_t__* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  mux_fwnode_match ; 
 int /*<<< orphan*/  name_match ; 
 void* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  typec_mux_class ; 

__attribute__((used)) static void *FUNC8(struct device_connection *con, int ep, void *data)
{
	const struct typec_altmode_desc *desc = data;
	struct device *dev;
	bool match;
	int nval;
	u16 *val;
	int i;

	if (!con->fwnode) {
		dev = FUNC1(&typec_mux_class, NULL,
					con->endpoint[ep], name_match);

		return dev ? FUNC7(dev) : FUNC0(-EPROBE_DEFER);
	}

	/*
	 * Check has the identifier already been "consumed". If it
	 * has, no need to do any extra connection identification.
	 */
	match = !con->id;
	if (match)
		goto find_mux;

	/* Accessory Mode muxes */
	if (!desc) {
		match = FUNC3(con->fwnode, "accessory");
		if (match)
			goto find_mux;
		return NULL;
	}

	/* Alternate Mode muxes */
	nval = FUNC2(con->fwnode, "svid");
	if (nval <= 0)
		return NULL;

	val = FUNC5(nval, sizeof(*val), GFP_KERNEL);
	if (!val)
		return FUNC0(-ENOMEM);

	nval = FUNC4(con->fwnode, "svid", val, nval);
	if (nval < 0) {
		FUNC6(val);
		return FUNC0(nval);
	}

	for (i = 0; i < nval; i++) {
		match = val[i] == desc->svid;
		if (match) {
			FUNC6(val);
			goto find_mux;
		}
	}
	FUNC6(val);
	return NULL;

find_mux:
	dev = FUNC1(&typec_mux_class, NULL, con->fwnode,
				mux_fwnode_match);

	return dev ? FUNC7(dev) : FUNC0(-EPROBE_DEFER);
}