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
struct usb_configuration {int dummy; } ;
struct usb_composite_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * f_serial ; 
 int /*<<< orphan*/ * fi_serial ; 
 int n_ports ; 
 int FUNC2 (struct usb_composite_dev*,struct usb_configuration*) ; 
 int FUNC3 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_configuration*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct usb_composite_dev *cdev,
		struct usb_configuration *c, const char *f_name)
{
	int i;
	int ret;

	ret = FUNC2(cdev, c);
	if (ret)
		goto out;

	for (i = 0; i < n_ports; i++) {

		fi_serial[i] = FUNC5(f_name);
		if (FUNC0(fi_serial[i])) {
			ret = FUNC1(fi_serial[i]);
			goto fail;
		}

		f_serial[i] = FUNC4(fi_serial[i]);
		if (FUNC0(f_serial[i])) {
			ret = FUNC1(f_serial[i]);
			goto err_get_func;
		}

		ret = FUNC3(c, f_serial[i]);
		if (ret)
			goto err_add_func;
	}

	return 0;

err_add_func:
	FUNC6(f_serial[i]);
err_get_func:
	FUNC7(fi_serial[i]);

fail:
	i--;
	while (i >= 0) {
		FUNC8(c, f_serial[i]);
		FUNC6(f_serial[i]);
		FUNC7(fi_serial[i]);
		i--;
	}
out:
	return ret;
}