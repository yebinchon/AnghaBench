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
struct device {int dummy; } ;
struct bcm2835_vchi_ctx {int /*<<< orphan*/ * vchi_instance; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 

int FUNC5(struct device *dev, struct bcm2835_vchi_ctx *vchi_ctx)
{
	int ret;

	/* Initialize and create a VCHI connection */
	ret = FUNC4(&vchi_ctx->vchi_instance);
	if (ret) {
		FUNC1(dev, "failed to initialise VCHI instance (ret=%d)\n",
			ret);
		return -EIO;
	}

	ret = FUNC3(vchi_ctx->vchi_instance);
	if (ret) {
		FUNC0(dev, "failed to connect VCHI instance (ret=%d)\n",
			ret);

		FUNC2(vchi_ctx->vchi_instance);
		vchi_ctx->vchi_instance = NULL;

		return -EIO;
	}

	return 0;
}