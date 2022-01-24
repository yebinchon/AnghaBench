#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_disk {scalar_t__ capacity; int physical_block_size; int /*<<< orphan*/  first_scan; TYPE_1__* device; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  cap_str_2 ;
typedef  int /*<<< orphan*/  cap_str_10 ;
struct TYPE_2__ {int sector_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  STRING_UNITS_10 ; 
 int /*<<< orphan*/  STRING_UNITS_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_disk*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct scsi_disk *sdkp,
		  sector_t old_capacity)
{
	int sector_size = sdkp->device->sector_size;
	char cap_str_2[10], cap_str_10[10];

	if (!sdkp->first_scan && old_capacity == sdkp->capacity)
		return;

	FUNC2(sdkp->capacity, sector_size,
			STRING_UNITS_2, cap_str_2, sizeof(cap_str_2));
	FUNC2(sdkp->capacity, sector_size,
			STRING_UNITS_10, cap_str_10, sizeof(cap_str_10));

	FUNC0(KERN_NOTICE, sdkp,
		  "%llu %d-byte logical blocks: (%s/%s)\n",
		  (unsigned long long)sdkp->capacity,
		  sector_size, cap_str_10, cap_str_2);

	if (sdkp->physical_block_size != sector_size)
		FUNC0(KERN_NOTICE, sdkp,
			  "%u-byte physical blocks\n",
			  sdkp->physical_block_size);

	FUNC1(sdkp);
}