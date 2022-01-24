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
struct smb2_fs_full_size_info {int /*<<< orphan*/  CallerAvailableAllocationUnits; int /*<<< orphan*/  TotalAllocationUnits; int /*<<< orphan*/  SectorsPerAllocationUnit; int /*<<< orphan*/  BytesPerSector; } ;
struct kstatfs {int f_bsize; void* f_bavail; void* f_bfree; void* f_blocks; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct smb2_fs_full_size_info *pfs_inf,
			     struct kstatfs *kst)
{
	kst->f_bsize = FUNC0(pfs_inf->BytesPerSector) *
			  FUNC0(pfs_inf->SectorsPerAllocationUnit);
	kst->f_blocks = FUNC1(pfs_inf->TotalAllocationUnits);
	kst->f_bfree  = kst->f_bavail =
			FUNC1(pfs_inf->CallerAvailableAllocationUnits);
	return;
}