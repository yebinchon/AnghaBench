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
typedef  int /*<<< orphan*/  uint16_t ;
struct beiscsi_hba {int dummy; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int EBUSY ; 
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned int FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct beiscsi_hba *phba, uint16_t vlan_tag)
{
	int rc;
	unsigned int tag;

	tag = FUNC0(phba, vlan_tag);
	if (!tag) {
		FUNC1(phba, KERN_ERR,
			    (BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX),
			    "BG_%d : VLAN Setting Failed\n");
		return -EBUSY;
	}

	rc = FUNC2(phba, tag, NULL, NULL);
	if (rc) {
		FUNC1(phba, KERN_ERR,
			    (BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX),
			    "BS_%d : VLAN MBX Cmd Failed\n");
		return rc;
	}
	return rc;
}