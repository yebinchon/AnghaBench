#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; TYPE_2__ cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPORT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_class ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ riocm_cdev ; 
 int /*<<< orphan*/  riocm_cdev_fops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static int FUNC10(dev_t devno)
{
	int ret;

	FUNC6(&riocm_cdev.cdev, &riocm_cdev_fops);
	riocm_cdev.cdev.owner = THIS_MODULE;
	ret = FUNC4(&riocm_cdev.cdev, devno, 1);
	if (ret < 0) {
		FUNC9("Cannot register a device with error %d", ret);
		return ret;
	}

	riocm_cdev.dev = FUNC7(dev_class, NULL, devno, NULL, DEV_NAME);
	if (FUNC0(riocm_cdev.dev)) {
		FUNC5(&riocm_cdev.cdev);
		return FUNC3(riocm_cdev.dev);
	}

	FUNC8(MPORT, "Added %s cdev(%d:%d)",
		    DEV_NAME, FUNC1(devno), FUNC2(devno));

	return 0;
}