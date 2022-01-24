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
struct fsg_opts {int /*<<< orphan*/  lock; TYPE_1__* common; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int can_stall; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,int) ; 
 struct fsg_opts* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item, char *page)
{
	struct fsg_opts *opts = FUNC3(item);
	int result;

	FUNC0(&opts->lock);
	result = FUNC2(page, "%d", opts->common->can_stall);
	FUNC1(&opts->lock);

	return result;
}