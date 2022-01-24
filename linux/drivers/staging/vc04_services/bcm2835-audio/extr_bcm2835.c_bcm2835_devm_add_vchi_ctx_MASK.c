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
struct bcm2835_vchi_ctx {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bcm2835_devm_free_vchi_ctx ; 
 int FUNC0 (struct device*,struct bcm2835_vchi_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct bcm2835_vchi_ctx*) ; 
 struct bcm2835_vchi_ctx* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_vchi_ctx*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct bcm2835_vchi_ctx *vchi_ctx;
	int ret;

	vchi_ctx = FUNC2(bcm2835_devm_free_vchi_ctx, sizeof(*vchi_ctx),
				GFP_KERNEL);
	if (!vchi_ctx)
		return -ENOMEM;

	ret = FUNC0(dev, vchi_ctx);
	if (ret) {
		FUNC3(vchi_ctx);
		return ret;
	}

	FUNC1(dev, vchi_ctx);

	return 0;
}