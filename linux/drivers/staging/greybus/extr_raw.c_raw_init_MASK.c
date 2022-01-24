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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_MINORS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_raw_driver ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_class ; 
 int /*<<< orphan*/  raw_major ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	dev_t dev;
	int retval;

	raw_class = FUNC4(THIS_MODULE, "gb_raw");
	if (FUNC0(raw_class)) {
		retval = FUNC2(raw_class);
		goto error_class;
	}

	retval = FUNC3(&dev, 0, NUM_MINORS, "gb_raw");
	if (retval < 0)
		goto error_chrdev;

	raw_major = FUNC1(dev);

	retval = FUNC6(&gb_raw_driver);
	if (retval)
		goto error_gb;

	return 0;

error_gb:
	FUNC7(dev, NUM_MINORS);
error_chrdev:
	FUNC5(raw_class);
error_class:
	return retval;
}