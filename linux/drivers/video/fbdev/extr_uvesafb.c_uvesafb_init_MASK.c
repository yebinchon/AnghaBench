#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver_attr_v86d ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char**) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  uvesafb_cn_callback ; 
 int /*<<< orphan*/  uvesafb_cn_id ; 
 scalar_t__ uvesafb_device ; 
 TYPE_1__ uvesafb_driver ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(void)
{
	int err;

#ifndef MODULE
	char *option = NULL;

	if (FUNC3("uvesafb", &option))
		return -ENODEV;
	FUNC10(option);
#endif
	err = FUNC0(&uvesafb_cn_id, "uvesafb", uvesafb_cn_callback);
	if (err)
		return err;

	err = FUNC7(&uvesafb_driver);

	if (!err) {
		uvesafb_device = FUNC5("uvesafb", 0);
		if (uvesafb_device)
			err = FUNC4(uvesafb_device);
		else
			err = -ENOMEM;

		if (err) {
			FUNC6(uvesafb_device);
			FUNC8(&uvesafb_driver);
			FUNC1(&uvesafb_cn_id);
			return err;
		}

		err = FUNC2(&uvesafb_driver.driver,
				&driver_attr_v86d);
		if (err) {
			FUNC9("failed to register attributes\n");
			err = 0;
		}
	}
	return err;
}