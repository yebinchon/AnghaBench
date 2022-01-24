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
struct csio_msix_entries {int /*<<< orphan*/  desc; } ;
struct csio_hw {int num_sqsets; struct csio_msix_entries* msix_entries; } ;

/* Variables and functions */
 int CSIO_EXTRA_VECS ; 
 int FUNC0 (struct csio_hw*) ; 
 int FUNC1 (struct csio_hw*) ; 
 int FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int,int,...) ; 

__attribute__((used)) static void
FUNC5(struct csio_hw *hw)
{
	int i;
	struct csio_msix_entries *entryp = &hw->msix_entries[0];
	int k = CSIO_EXTRA_VECS;
	int len = sizeof(entryp->desc) - 1;
	int cnt = hw->num_sqsets + k;

	/* Non-data vector */
	FUNC3(entryp->desc, 0, len + 1);
	FUNC4(entryp->desc, len, "csio-%02x:%02x:%x-nondata",
		 FUNC0(hw), FUNC1(hw), FUNC2(hw));

	entryp++;
	FUNC3(entryp->desc, 0, len + 1);
	FUNC4(entryp->desc, len, "csio-%02x:%02x:%x-fwevt",
		 FUNC0(hw), FUNC1(hw), FUNC2(hw));
	entryp++;

	/* Name SCSI vecs */
	for (i = k; i < cnt; i++, entryp++) {
		FUNC3(entryp->desc, 0, len + 1);
		FUNC4(entryp->desc, len, "csio-%02x:%02x:%x-scsi%d",
			 FUNC0(hw), FUNC1(hw),
			 FUNC2(hw), i - CSIO_EXTRA_VECS);
	}
}