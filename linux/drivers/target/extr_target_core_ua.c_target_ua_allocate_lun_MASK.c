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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct se_node_acl {int dummy; } ;
struct se_dev_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_dev_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct se_dev_entry* FUNC3 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

void FUNC4(struct se_node_acl *nacl,
			    u32 unpacked_lun, u8 asc, u8 ascq)
{
	struct se_dev_entry *deve;

	if (!nacl)
		return;

	FUNC1();
	deve = FUNC3(nacl, unpacked_lun);
	if (!deve) {
		FUNC2();
		return;
	}

	FUNC0(deve, asc, ascq);
	FUNC2();
}