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
struct platform_device {int dummy; } ;
struct kpc_dma_device {TYPE_2__* pldev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  assigned_major_num ; 
 int /*<<< orphan*/  FUNC1 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  kpc_dma_class ; 
 int /*<<< orphan*/  FUNC4 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  ndd_attr_list ; 
 struct kpc_dma_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int  FUNC8(struct platform_device *pldev)
{
	struct kpc_dma_device *ldev = FUNC6(pldev);

	if (!ldev)
		return -ENXIO;

	FUNC5(ldev);
	FUNC7(&(ldev->pldev->dev.kobj), ndd_attr_list);
	FUNC1(ldev);
	FUNC4(ldev);
	FUNC2(kpc_dma_class, FUNC0(assigned_major_num, ldev->pldev->id));
	FUNC3(ldev);

	return 0;
}