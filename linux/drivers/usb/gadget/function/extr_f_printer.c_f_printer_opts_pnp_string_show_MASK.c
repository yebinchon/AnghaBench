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
struct f_printer_opts {int /*<<< orphan*/  lock; int /*<<< orphan*/  pnp_string; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 struct f_printer_opts* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
					      char *page)
{
	struct f_printer_opts *opts = FUNC3(item);
	int result = 0;

	FUNC0(&opts->lock);
	if (!opts->pnp_string)
		goto unlock;

	result = FUNC2(page, opts->pnp_string, PAGE_SIZE);
	if (result >= PAGE_SIZE) {
		result = PAGE_SIZE;
	} else if (page[result - 1] != '\n' && result + 1 < PAGE_SIZE) {
		page[result++] = '\n';
		page[result] = '\0';
	}

unlock:
	FUNC1(&opts->lock);

	return result;
}