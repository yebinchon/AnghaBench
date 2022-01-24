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
struct f_midi_opts {int refcnt; int id_allocated; char* id; int /*<<< orphan*/  lock; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct f_midi_opts* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
				    const char *page, size_t len)
{
	struct f_midi_opts *opts = FUNC4(item);
	int ret;
	char *c;

	FUNC2(&opts->lock);
	if (opts->refcnt > 1) {
		ret = -EBUSY;
		goto end;
	}

	c = FUNC1(page, len, GFP_KERNEL);
	if (!c) {
		ret = -ENOMEM;
		goto end;
	}
	if (opts->id_allocated)
		FUNC0(opts->id);
	opts->id = c;
	opts->id_allocated = true;
	ret = len;
end:
	FUNC3(&opts->lock);
	return ret;
}