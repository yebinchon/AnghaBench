#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct meson_vrtc_data {TYPE_1__* rtc; TYPE_1__* io_alarm; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct meson_vrtc_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  meson_vrtc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct meson_vrtc_data*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct meson_vrtc_data *vrtc;
	int ret;

	vrtc = FUNC3(&pdev->dev, sizeof(*vrtc), GFP_KERNEL);
	if (!vrtc)
		return -ENOMEM;

	vrtc->io_alarm = FUNC4(pdev, 0);
	if (FUNC0(vrtc->io_alarm))
		return FUNC1(vrtc->io_alarm);

	FUNC2(&pdev->dev, 1);

	FUNC6(pdev, vrtc);

	vrtc->rtc = FUNC5(&pdev->dev);
	if (FUNC0(vrtc->rtc))
		return FUNC1(vrtc->rtc);

	vrtc->rtc->ops = &meson_vrtc_ops;
	ret = FUNC7(vrtc->rtc);
	if (ret)
		return ret;

	return 0;
}