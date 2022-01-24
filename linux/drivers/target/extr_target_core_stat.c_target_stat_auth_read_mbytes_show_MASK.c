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
typedef  int u32 ;
struct se_node_acl {int dummy; } ;
struct se_lun_acl {int /*<<< orphan*/  mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int /*<<< orphan*/  read_bytes; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct se_lun_acl* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct se_dev_entry* FUNC5 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		char *page)
{
	struct se_lun_acl *lacl = FUNC1(item);
	struct se_node_acl *nacl = lacl->se_lun_nacl;
	struct se_dev_entry *deve;
	ssize_t ret;

	FUNC2();
	deve = FUNC5(nacl, lacl->mapped_lun);
	if (!deve) {
		FUNC3();
		return -ENODEV;
	}
	/* scsiAuthIntrReadMegaBytes */
	ret = FUNC4(page, PAGE_SIZE, "%u\n",
		      (u32)(FUNC0(&deve->read_bytes) >> 20));
	FUNC3();
	return ret;
}