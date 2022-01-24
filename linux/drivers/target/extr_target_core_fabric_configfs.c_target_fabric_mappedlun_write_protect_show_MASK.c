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
struct se_dev_entry {int lun_access_ro; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct se_lun_acl* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct se_dev_entry* FUNC4 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(
		struct config_item *item, char *page)
{
	struct se_lun_acl *lacl = FUNC0(item);
	struct se_node_acl *se_nacl = lacl->se_lun_nacl;
	struct se_dev_entry *deve;
	ssize_t len = 0;

	FUNC1();
	deve = FUNC4(se_nacl, lacl->mapped_lun);
	if (deve) {
		len = FUNC3(page, "%d\n", deve->lun_access_ro);
	}
	FUNC2();

	return len;
}