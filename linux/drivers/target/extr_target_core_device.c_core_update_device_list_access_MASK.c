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
typedef  int /*<<< orphan*/  u64 ;
struct se_node_acl {int /*<<< orphan*/  lun_entry_mutex; } ;
struct se_dev_entry {int lun_access_ro; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct se_dev_entry* FUNC2 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

void FUNC3(
	u64 mapped_lun,
	bool lun_access_ro,
	struct se_node_acl *nacl)
{
	struct se_dev_entry *deve;

	FUNC0(&nacl->lun_entry_mutex);
	deve = FUNC2(nacl, mapped_lun);
	if (deve)
		deve->lun_access_ro = lun_access_ro;
	FUNC1(&nacl->lun_entry_mutex);
}