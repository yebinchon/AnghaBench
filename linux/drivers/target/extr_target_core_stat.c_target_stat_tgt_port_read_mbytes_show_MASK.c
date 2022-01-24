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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_data_octets; } ;
struct se_lun {TYPE_1__ lun_stats; int /*<<< orphan*/  lun_se_dev; } ;
struct se_device {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct se_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct se_lun* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		char *page)
{
	struct se_lun *lun = FUNC5(item);
	struct se_device *dev;
	ssize_t ret = -ENODEV;

	FUNC2();
	dev = FUNC1(lun->lun_se_dev);
	if (dev)
		ret = FUNC4(page, PAGE_SIZE, "%u\n",
				(u32)(FUNC0(&lun->lun_stats.tx_data_octets) >> 20));
	FUNC3();
	return ret;
}