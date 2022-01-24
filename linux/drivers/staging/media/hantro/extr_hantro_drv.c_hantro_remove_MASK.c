#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  name; } ;
struct hantro_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  clocks; TYPE_1__* variant; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  mdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hantro_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hantro_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hantro_dev* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct hantro_dev *vpu = FUNC5(pdev);

	FUNC9(&vpu->v4l2_dev, "Removing %s\n", pdev->name);

	FUNC4(&vpu->mdev);
	FUNC1(vpu);
	FUNC2(vpu);
	FUNC3(&vpu->mdev);
	FUNC10(vpu->m2m_dev);
	FUNC8(&vpu->v4l2_dev);
	FUNC0(vpu->variant->num_clocks, vpu->clocks);
	FUNC7(vpu->dev);
	FUNC6(vpu->dev);
	return 0;
}