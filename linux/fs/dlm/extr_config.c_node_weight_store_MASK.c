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
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  weight; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct config_item*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item, const char *buf,
				 size_t len)
{
	int rc = FUNC1(buf, 0, &FUNC0(item)->weight);

	if (rc)
		return rc;
	return len;
}