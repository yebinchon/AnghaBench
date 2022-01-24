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
struct fsg_opts {int /*<<< orphan*/  lock; TYPE_1__* common; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int can_stall; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int*) ; 
 struct fsg_opts* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item, const char *page,
				    size_t len)
{
	struct fsg_opts *opts = FUNC3(item);
	int ret;
	bool stall;

	FUNC0(&opts->lock);

	if (opts->refcnt) {
		FUNC1(&opts->lock);
		return -EBUSY;
	}

	ret = FUNC2(page, &stall);
	if (!ret) {
		opts->common->can_stall = stall;
		ret = len;
	}

	FUNC1(&opts->lock);

	return ret;
}