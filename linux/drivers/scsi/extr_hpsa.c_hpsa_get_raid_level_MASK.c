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
struct ctlr_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HPSA_VPD_LV_DEVICE_GEOMETRY ; 
 unsigned char RAID_UNKNOWN ; 
 int VPD_PAGE ; 
 int FUNC0 (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h,
	unsigned char *scsi3addr, unsigned char *raid_level)
{
	int rc;
	unsigned char *buf;

	*raid_level = RAID_UNKNOWN;
	buf = FUNC3(64, GFP_KERNEL);
	if (!buf)
		return;

	if (!FUNC1(h, scsi3addr,
		HPSA_VPD_LV_DEVICE_GEOMETRY))
		goto exit;

	rc = FUNC0(h, scsi3addr, VPD_PAGE |
		HPSA_VPD_LV_DEVICE_GEOMETRY, buf, 64);

	if (rc == 0)
		*raid_level = buf[8];
	if (*raid_level > RAID_UNKNOWN)
		*raid_level = RAID_UNKNOWN;
exit:
	FUNC2(buf);
	return;
}