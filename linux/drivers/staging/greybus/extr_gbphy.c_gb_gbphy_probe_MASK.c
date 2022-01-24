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
struct greybus_bundle_id {int dummy; } ;
struct gbphy_host {int /*<<< orphan*/  devices; struct gb_bundle* bundle; } ;
struct gbphy_device {int /*<<< orphan*/  list; } ;
struct gb_bundle {int num_cports; int /*<<< orphan*/ * cport_desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct gbphy_device*) ; 
 int FUNC2 (struct gbphy_device*) ; 
 struct gbphy_device* FUNC3 (struct gb_bundle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_bundle*,struct gbphy_host*) ; 
 struct gbphy_host* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct gb_bundle *bundle,
			  const struct greybus_bundle_id *id)
{
	struct gbphy_host *gbphy_host;
	struct gbphy_device *gbphy_dev;
	int i;

	if (bundle->num_cports == 0)
		return -ENODEV;

	gbphy_host = FUNC7(sizeof(*gbphy_host), GFP_KERNEL);
	if (!gbphy_host)
		return -ENOMEM;

	gbphy_host->bundle = bundle;
	FUNC0(&gbphy_host->devices);
	FUNC6(bundle, gbphy_host);

	/*
	 * Create a bunch of children devices, one per cport, and bind the
	 * bridged phy drivers to them.
	 */
	for (i = 0; i < bundle->num_cports; ++i) {
		gbphy_dev = FUNC3(bundle, &bundle->cport_desc[i]);
		if (FUNC1(gbphy_dev)) {
			FUNC4(bundle);
			return FUNC2(gbphy_dev);
		}
		FUNC8(&gbphy_dev->list, &gbphy_host->devices);
	}

	FUNC5(bundle);

	return 0;
}