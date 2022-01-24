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
struct reset_controller_dev {int dummy; } ;
struct hsdk_rst {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hsdk_rst*,unsigned long) ; 
 int FUNC1 (struct hsdk_rst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hsdk_rst* FUNC4 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
			      unsigned long id)
{
	struct hsdk_rst *rst = FUNC4(rcdev);
	unsigned long flags;
	int ret;

	FUNC2(&rst->lock, flags);
	FUNC0(rst, id);
	ret = FUNC1(rst);
	FUNC3(&rst->lock, flags);

	return ret;
}