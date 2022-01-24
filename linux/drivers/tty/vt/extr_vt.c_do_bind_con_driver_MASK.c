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
struct vc_data {int vc_can_do_color; unsigned long vc_origin; int /*<<< orphan*/  vc_rows; int /*<<< orphan*/  vc_cols; scalar_t__ vc_screenbuf; TYPE_1__* vc_sw; } ;
struct module {int dummy; } ;
struct consw {struct module* owner; int /*<<< orphan*/  (* con_startup ) () ;} ;
struct con_driver {char* desc; int flag; int /*<<< orphan*/  last; int /*<<< orphan*/  first; struct consw const* con; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* con_deinit ) (struct vc_data*) ;} ;

/* Variables and functions */
 int CON_DRIVER_FLAG_INIT ; 
 int ENODEV ; 
 int MAX_NR_CON_DRIVER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 struct consw const** con_driver_map ; 
 scalar_t__ FUNC3 (struct vc_data*) ; 
 struct consw const* conswitchp ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct module*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct con_driver* registered_con_driver ; 
 int /*<<< orphan*/  FUNC9 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct module*) ; 
 int /*<<< orphan*/  FUNC14 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct vc_data*) ; 
 TYPE_2__* vc_cons ; 
 int /*<<< orphan*/  FUNC16 (struct vc_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(const struct consw *csw, int first, int last,
			   int deflt)
{
	struct module *owner = csw->owner;
	const char *desc = NULL;
	struct con_driver *con_driver;
	int i, j = -1, k = -1, retval = -ENODEV;

	if (!FUNC13(owner))
		return -ENODEV;

	FUNC0();

	/* check if driver is registered */
	for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
		con_driver = &registered_con_driver[i];

		if (con_driver->con == csw) {
			desc = con_driver->desc;
			retval = 0;
			break;
		}
	}

	if (retval)
		goto err;

	if (!(con_driver->flag & CON_DRIVER_FLAG_INIT)) {
		csw->con_startup();
		con_driver->flag |= CON_DRIVER_FLAG_INIT;
	}

	if (deflt) {
		if (conswitchp)
			FUNC6(conswitchp->owner);

		FUNC1(owner);
		conswitchp = csw;
	}

	first = FUNC4(first, con_driver->first);
	last = FUNC5(last, con_driver->last);

	for (i = first; i <= last; i++) {
		int old_was_color;
		struct vc_data *vc = vc_cons[i].d;

		if (con_driver_map[i])
			FUNC6(con_driver_map[i]->owner);
		FUNC1(owner);
		con_driver_map[i] = csw;

		if (!vc || !vc->vc_sw)
			continue;

		j = i;

		if (FUNC3(vc)) {
			k = i;
			FUNC9(vc);
		}

		old_was_color = vc->vc_can_do_color;
		vc->vc_sw->con_deinit(vc);
		vc->vc_origin = (unsigned long)vc->vc_screenbuf;
		FUNC16(vc, i, 0);
		FUNC10(vc);
		FUNC14(vc);

		/* If the console changed between mono <-> color, then
		 * the attributes in the screenbuf will be wrong.  The
		 * following resets all attributes to something sane.
		 */
		if (old_was_color != vc->vc_can_do_color)
			FUNC2(vc);
	}

	FUNC8("Console: switching ");
	if (!deflt)
		FUNC7("consoles %d-%d ", first + 1, last + 1);
	if (j >= 0) {
		struct vc_data *vc = vc_cons[j].d;

		FUNC7("to %s %s %dx%d\n",
			vc->vc_can_do_color ? "colour" : "mono",
			desc, vc->vc_cols, vc->vc_rows);

		if (k >= 0) {
			vc = vc_cons[k].d;
			FUNC15(vc);
		}
	} else {
		FUNC7("to %s\n", desc);
	}

	retval = 0;
err:
	FUNC6(owner);
	return retval;
}