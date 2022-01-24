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
struct usb_function_instance {int /*<<< orphan*/  group; int /*<<< orphan*/  free_func_inst; } ;
struct f_hid_opts {scalar_t__ minor; struct usb_function_instance func_inst; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct usb_function_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIDG_MINORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_func_type ; 
 int /*<<< orphan*/  hidg_free_inst ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  hidg_ida ; 
 int /*<<< orphan*/  hidg_ida_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct f_hid_opts*) ; 
 struct f_hid_opts* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct usb_function_instance *FUNC11(void)
{
	struct f_hid_opts *opts;
	struct usb_function_instance *ret;
	int status = 0;

	opts = FUNC7(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC0(-ENOMEM);
	FUNC8(&opts->lock);
	opts->func_inst.free_func_inst = hidg_free_inst;
	ret = &opts->func_inst;

	FUNC9(&hidg_ida_lock);

	if (FUNC5(&hidg_ida)) {
		status = FUNC3(NULL, HIDG_MINORS);
		if (status)  {
			ret = FUNC0(status);
			FUNC6(opts);
			goto unlock;
		}
	}

	opts->minor = FUNC4();
	if (opts->minor < 0) {
		ret = FUNC0(opts->minor);
		FUNC6(opts);
		if (FUNC5(&hidg_ida))
			FUNC2();
		goto unlock;
	}
	FUNC1(&opts->func_inst.group, "", &hid_func_type);

unlock:
	FUNC10(&hidg_ida_lock);
	return ret;
}