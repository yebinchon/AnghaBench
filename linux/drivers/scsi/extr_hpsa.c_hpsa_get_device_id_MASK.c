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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HPSA_VPD_LV_DEVICE_ID ; 
 int VPD_PAGE ; 
 int FUNC0 (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(struct ctlr_info *h, unsigned char *scsi3addr,
	unsigned char *device_id, int index, int buflen)
{
	int rc;
	unsigned char *buf;

	/* Does controller have VPD for device id? */
	if (!FUNC1(h, scsi3addr, HPSA_VPD_LV_DEVICE_ID))
		return 1; /* not supported */

	buf = FUNC3(64, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	rc = FUNC0(h, scsi3addr, VPD_PAGE |
					HPSA_VPD_LV_DEVICE_ID, buf, 64);
	if (rc == 0) {
		if (buflen > 16)
			buflen = 16;
		FUNC4(device_id, &buf[8], buflen);
	}

	FUNC2(buf);

	return rc; /*0 - got id,  otherwise, didn't */
}