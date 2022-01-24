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
typedef  int /*<<< orphan*/  u32 ;
struct f_ss_opts {int /*<<< orphan*/  lock; int /*<<< orphan*/  iso_qlen; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct f_ss_opts* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
					   const char *page, size_t len)
{
	struct f_ss_opts *opts = FUNC3(item);
	int ret;
	u32 num;

	FUNC1(&opts->lock);
	if (opts->refcnt) {
		ret = -EBUSY;
		goto end;
	}

	ret = FUNC0(page, 0, &num);
	if (ret)
		goto end;

	opts->iso_qlen = num;
	ret = len;
end:
	FUNC2(&opts->lock);
	return ret;
}