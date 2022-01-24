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
struct xhci_hcd_mtk {int /*<<< orphan*/  vbus; int /*<<< orphan*/  dev; int /*<<< orphan*/  vusb33; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xhci_hcd_mtk *mtk)
{
	int ret;

	ret = FUNC2(mtk->vbus);
	if (ret) {
		FUNC0(mtk->dev, "failed to enable vbus\n");
		return ret;
	}

	ret = FUNC2(mtk->vusb33);
	if (ret) {
		FUNC0(mtk->dev, "failed to enable vusb33\n");
		FUNC1(mtk->vbus);
		return ret;
	}
	return 0;
}