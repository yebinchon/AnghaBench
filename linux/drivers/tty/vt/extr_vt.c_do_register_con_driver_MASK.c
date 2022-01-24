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
struct module {int dummy; } ;
struct consw {char* (* con_startup ) () ;struct module* owner; } ;
struct con_driver {int flag; char const* desc; int node; int first; int last; int /*<<< orphan*/ * dev; struct consw const* con; } ;

/* Variables and functions */
 int CON_DRIVER_FLAG_INIT ; 
 int CON_DRIVER_FLAG_MODULE ; 
 int CON_DRIVER_FLAG_ZOMBIE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_NR_CON_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  con_dev_groups ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct con_driver*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 struct con_driver* registered_con_driver ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct module*) ; 
 int /*<<< orphan*/  vtconsole_class ; 
 int /*<<< orphan*/  FUNC9 (struct con_driver*) ; 

__attribute__((used)) static int FUNC10(const struct consw *csw, int first, int last)
{
	struct module *owner = csw->owner;
	struct con_driver *con_driver;
	const char *desc;
	int i, retval;

	FUNC3();

	if (!FUNC8(owner))
		return -ENODEV;

	for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
		con_driver = &registered_con_driver[i];

		/* already registered */
		if (con_driver->con == csw) {
			retval = -EBUSY;
			goto err;
		}
	}

	desc = csw->con_startup();
	if (!desc) {
		retval = -ENODEV;
		goto err;
	}

	retval = -EINVAL;

	for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
		con_driver = &registered_con_driver[i];

		if (con_driver->con == NULL &&
		    !(con_driver->flag & CON_DRIVER_FLAG_ZOMBIE)) {
			con_driver->con = csw;
			con_driver->desc = desc;
			con_driver->node = i;
			con_driver->flag = CON_DRIVER_FLAG_MODULE |
			                   CON_DRIVER_FLAG_INIT;
			con_driver->first = first;
			con_driver->last = last;
			retval = 0;
			break;
		}
	}

	if (retval)
		goto err;

	con_driver->dev =
		FUNC4(vtconsole_class, NULL,
					  FUNC1(0, con_driver->node),
					  con_driver, con_dev_groups,
					  "vtcon%i", con_driver->node);
	if (FUNC0(con_driver->dev)) {
		FUNC6("Unable to create device for %s; errno = %ld\n",
			con_driver->desc, FUNC2(con_driver->dev));
		con_driver->dev = NULL;
	} else {
		FUNC9(con_driver);
	}

err:
	FUNC5(owner);
	return retval;
}