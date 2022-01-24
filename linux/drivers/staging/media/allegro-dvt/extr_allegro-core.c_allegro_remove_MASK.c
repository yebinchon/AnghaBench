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
struct platform_device {int dummy; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; scalar_t__ m2m_dev; int /*<<< orphan*/  video_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct allegro_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_dev*) ; 
 struct allegro_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct allegro_dev *dev = FUNC2(pdev);

	FUNC5(&dev->video_dev);
	if (dev->m2m_dev)
		FUNC4(dev->m2m_dev);
	FUNC1(dev);
	FUNC0(dev);

	FUNC3(&dev->v4l2_dev);

	return 0;
}