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
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_VPD_PG_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int,unsigned char*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct scsi_device *sdev)
{
	unsigned char *buf;
	bool ncq_prio_supp = false;

	if (!FUNC2(sdev))
		return ncq_prio_supp;

	buf = FUNC1(SCSI_VPD_PG_LEN, GFP_KERNEL);
	if (!buf)
		return ncq_prio_supp;

	if (!FUNC3(sdev, 0x89, buf, SCSI_VPD_PG_LEN))
		ncq_prio_supp = (buf[213] >> 4) & 1;

	FUNC0(buf);
	return ncq_prio_supp;
}