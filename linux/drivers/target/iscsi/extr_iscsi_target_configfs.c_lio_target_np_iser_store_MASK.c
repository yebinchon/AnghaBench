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
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (struct config_item*,char const*,size_t,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC1(struct config_item *item,
					const char *page, size_t count)
{
	return FUNC0(item, page, count,
					  ISCSI_INFINIBAND, "ib_isert");
}