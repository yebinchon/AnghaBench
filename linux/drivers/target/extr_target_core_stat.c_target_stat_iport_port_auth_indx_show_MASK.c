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
struct se_node_acl {int acl_index; } ;
struct se_lun_acl {int /*<<< orphan*/  mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct se_lun_acl* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct se_dev_entry* FUNC4 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
		char *page)
{
	struct se_lun_acl *lacl = FUNC0(item);
	struct se_node_acl *nacl = lacl->se_lun_nacl;
	struct se_dev_entry *deve;
	ssize_t ret;

	FUNC1();
	deve = FUNC4(nacl, lacl->mapped_lun);
	if (!deve) {
		FUNC2();
		return -ENODEV;
	}
	/* scsiAttIntrPortAuthIntrIdx */
	ret = FUNC3(page, PAGE_SIZE, "%u\n", nacl->acl_index);
	FUNC2();
	return ret;
}