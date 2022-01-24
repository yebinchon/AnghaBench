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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {unsigned long count; int /*<<< orphan*/  wait; } ;
struct s3c_fb {int /*<<< orphan*/  dev; TYPE_1__ vsync_info; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VSYNC_TIMEOUT_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c_fb*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct s3c_fb *sfb, u32 crtc)
{
	unsigned long count;
	int ret;

	if (crtc != 0)
		return -ENODEV;

	FUNC1(sfb->dev);

	count = sfb->vsync_info.count;
	FUNC3(sfb);
	ret = FUNC4(sfb->vsync_info.wait,
				       count != sfb->vsync_info.count,
				       FUNC0(VSYNC_TIMEOUT_MSEC));

	FUNC2(sfb->dev);

	if (ret == 0)
		return -ETIMEDOUT;

	return 0;
}