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
struct f_hid_opts {int report_desc_length; int /*<<< orphan*/  lock; int /*<<< orphan*/  report_desc; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct f_hid_opts* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item, char *page)
{
	struct f_hid_opts *opts = FUNC3(item);
	int result;

	FUNC1(&opts->lock);
	result = opts->report_desc_length;
	FUNC0(page, opts->report_desc, opts->report_desc_length);
	FUNC2(&opts->lock);

	return result;
}