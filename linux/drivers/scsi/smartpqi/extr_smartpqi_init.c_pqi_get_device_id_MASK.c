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
struct pqi_ctrl_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SCSI_VPD_DEVICE_ID ; 
 size_t SCSI_VPD_DEVICE_ID_IDX ; 
 int VPD_PAGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC3 (struct pqi_ctrl_info*,int /*<<< orphan*/ *,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct pqi_ctrl_info *ctrl_info,
	u8 *scsi3addr, u8 *device_id, int buflen)
{
	int rc;
	unsigned char *buf;

	if (!FUNC4(ctrl_info, scsi3addr, SCSI_VPD_DEVICE_ID))
		return 1; /* function not supported */

	buf = FUNC1(64, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	rc = FUNC3(ctrl_info, scsi3addr,
				VPD_PAGE | SCSI_VPD_DEVICE_ID,
				buf, 64);
	if (rc == 0) {
		if (buflen > 16)
			buflen = 16;
		FUNC2(device_id, &buf[SCSI_VPD_DEVICE_ID_IDX], buflen);
	}

	FUNC0(buf);

	return rc;
}