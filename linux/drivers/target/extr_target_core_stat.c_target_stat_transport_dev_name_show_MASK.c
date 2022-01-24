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
struct t10_wwn {char* unit_serial; char* vendor; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_lun {int /*<<< orphan*/  lun_se_dev; struct se_portal_group* lun_tpg; } ;
struct se_device {struct t10_wwn t10_wwn; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* (* tpg_get_wwn ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct se_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (struct se_portal_group*) ; 
 char* FUNC6 (struct se_portal_group*) ; 
 struct se_lun* FUNC7 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC8(struct config_item *item,
		char *page)
{
	struct se_lun *lun = FUNC7(item);
	struct se_device *dev;
	struct se_portal_group *tpg = lun->lun_tpg;
	struct t10_wwn *wwn;
	ssize_t ret = -ENODEV;

	FUNC1();
	dev = FUNC0(lun->lun_se_dev);
	if (dev) {
		wwn = &dev->t10_wwn;
		/* scsiTransportDevName */
		ret = FUNC3(page, PAGE_SIZE, "%s+%s\n",
				tpg->se_tpg_tfo->tpg_get_wwn(tpg),
				(FUNC4(wwn->unit_serial)) ? wwn->unit_serial :
				wwn->vendor);
	}
	FUNC2();
	return ret;
}