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
typedef  unsigned int u8 ;

/* Variables and functions */
 unsigned int UFS_UPIU_MAX_UNIT_NUM_ID ; 
 unsigned int UFS_UPIU_WLUN_ID ; 
 scalar_t__ FUNC0 (unsigned int) ; 

__attribute__((used)) static inline u8 FUNC1(unsigned int scsi_lun)
{
	if (FUNC0(scsi_lun))
		return (scsi_lun & UFS_UPIU_MAX_UNIT_NUM_ID)
			| UFS_UPIU_WLUN_ID;
	else
		return scsi_lun & UFS_UPIU_MAX_UNIT_NUM_ID;
}