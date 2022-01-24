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
struct raw3270 {struct raw3270* ascebc; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct raw3270* FUNC0 (int) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3270*) ; 
 char* FUNC3 (int,int) ; 
 struct raw3270* FUNC4 (int,int) ; 
 int FUNC5 (struct ccw_device*,struct raw3270*,char*) ; 

__attribute__((used)) static struct raw3270 *
FUNC6(struct ccw_device *cdev)
{
	struct raw3270 *rp;
	char *ascebc;
	int rc;

	rp = FUNC4(sizeof(struct raw3270), GFP_KERNEL | GFP_DMA);
	if (!rp)
		return FUNC0(-ENOMEM);
	ascebc = FUNC3(256, GFP_KERNEL);
	if (!ascebc) {
		FUNC2(rp);
		return FUNC0(-ENOMEM);
	}
	rc = FUNC5(cdev, rp, ascebc);
	if (rc) {
		FUNC2(rp->ascebc);
		FUNC2(rp);
		rp = FUNC0(rc);
	}
	/* Get reference to ccw_device structure. */
	FUNC1(&cdev->dev);
	return rp;
}