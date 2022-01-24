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
struct se_node_acl {int dummy; } ;
struct se_lun_acl {int /*<<< orphan*/  mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_lun {int lun_index; } ;
struct se_dev_entry {int /*<<< orphan*/  se_lun; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct se_lun_acl* FUNC0 (struct config_item*) ; 
 struct se_lun* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct se_dev_entry* FUNC5 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		char *page)
{
	struct se_lun_acl *lacl = FUNC0(item);
	struct se_node_acl *nacl = lacl->se_lun_nacl;
	struct se_dev_entry *deve;
	struct se_lun *lun;
	ssize_t ret;

	FUNC2();
	deve = FUNC5(nacl, lacl->mapped_lun);
	if (!deve) {
		FUNC3();
		return -ENODEV;
	}
	lun = FUNC1(deve->se_lun);
	/* scsiDeviceIndex */
	ret = FUNC4(page, PAGE_SIZE, "%u\n", lun->lun_index);
	FUNC3();
	return ret;
}