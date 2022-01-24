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
struct file {int /*<<< orphan*/  private_data; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBADFD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ vsoc_dev ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

inline int FUNC4(struct file *filp)
{
	int ret = FUNC3(FUNC1(filp));

	if (ret)
		return ret;
	if (!filp->private_data) {
		FUNC0(&vsoc_dev.dev->dev,
			"No private data on fd, region %d\n",
			FUNC2(FUNC1(filp)));
		return -EBADFD;
	}
	return 0;
}