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
struct se_lun {int /*<<< orphan*/  lun_se_dev; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct se_lun*,char const*,size_t) ; 
 struct se_lun* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC2(
		struct config_item *item, const char *page, size_t count)
{
	struct se_lun *lun = FUNC1(item);

	if (!lun || !lun->lun_se_dev)
		return -ENODEV;

	return FUNC0(lun, page, count);
}