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
struct gadget_info {int use_os_desc; int /*<<< orphan*/  lock; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gadget_info* FUNC2 (struct config_item*) ; 
 int FUNC3 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item, const char *page,
				 size_t len)
{
	struct gadget_info *gi = FUNC2(item);
	int ret;
	bool use;

	FUNC0(&gi->lock);
	ret = FUNC3(page, &use);
	if (!ret) {
		gi->use_os_desc = use;
		ret = len;
	}
	FUNC1(&gi->lock);

	return ret;
}