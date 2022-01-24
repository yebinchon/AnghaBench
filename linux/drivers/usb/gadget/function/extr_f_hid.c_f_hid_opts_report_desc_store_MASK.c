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
struct f_hid_opts {char* report_desc; size_t report_desc_length; int report_desc_alloc; int /*<<< orphan*/  lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct f_hid_opts* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
					    const char *page, size_t len)
{
	struct f_hid_opts *opts = FUNC4(item);
	int ret = -EBUSY;
	char *d;

	FUNC2(&opts->lock);

	if (opts->refcnt)
		goto end;
	if (len > PAGE_SIZE) {
		ret = -ENOSPC;
		goto end;
	}
	d = FUNC1(page, len, GFP_KERNEL);
	if (!d) {
		ret = -ENOMEM;
		goto end;
	}
	FUNC0(opts->report_desc);
	opts->report_desc = d;
	opts->report_desc_length = len;
	opts->report_desc_alloc = true;
	ret = len;
end:
	FUNC3(&opts->lock);
	return ret;
}