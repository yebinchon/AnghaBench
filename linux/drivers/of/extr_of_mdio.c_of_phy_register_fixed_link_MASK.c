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
typedef  void* u32 ;
struct fixed_phy_status {int link; void* asym_pause; void* pause; void* speed; void* duplex; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PHY_POLL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fixed_phy_status*,struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 void* FUNC5 (struct device_node*,char*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,void**) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

int FUNC10(struct device_node *np)
{
	struct fixed_phy_status status = {};
	struct device_node *fixed_link_node;
	u32 fixed_link_prop[5];
	const char *managed;

	if (FUNC6(np, "managed", &managed) == 0 &&
	    FUNC9(managed, "in-band-status") == 0) {
		/* status is zeroed, namely its .link member */
		goto register_phy;
	}

	/* New binding */
	fixed_link_node = FUNC3(np, "fixed-link");
	if (fixed_link_node) {
		status.link = 1;
		status.duplex = FUNC5(fixed_link_node,
						      "full-duplex");
		if (FUNC7(fixed_link_node, "speed",
					 &status.speed)) {
			FUNC4(fixed_link_node);
			return -EINVAL;
		}
		status.pause = FUNC5(fixed_link_node, "pause");
		status.asym_pause = FUNC5(fixed_link_node,
							  "asym-pause");
		FUNC4(fixed_link_node);

		goto register_phy;
	}

	/* Old binding */
	if (FUNC8(np, "fixed-link", fixed_link_prop,
				       FUNC0(fixed_link_prop)) == 0) {
		status.link = 1;
		status.duplex = fixed_link_prop[1];
		status.speed  = fixed_link_prop[2];
		status.pause  = fixed_link_prop[3];
		status.asym_pause = fixed_link_prop[4];
		goto register_phy;
	}

	return -ENODEV;

register_phy:
	return FUNC1(FUNC2(PHY_POLL, &status, np));
}