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
struct t10_vpd {int association; } ;

/* Variables and functions */
 int EINVAL ; 
 int VPD_TMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*) ; 
 int FUNC2 (unsigned char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

int FUNC4(
	struct t10_vpd *vpd,
	unsigned char *p_buf,
	int p_buf_len)
{
	unsigned char buf[VPD_TMP_BUF_SIZE];
	int ret = 0;
	int len;

	FUNC0(buf, 0, VPD_TMP_BUF_SIZE);
	len = FUNC2(buf, "T10 VPD Identifier Association: ");

	switch (vpd->association) {
	case 0x00:
		FUNC2(buf+len, "addressed logical unit\n");
		break;
	case 0x10:
		FUNC2(buf+len, "target port\n");
		break;
	case 0x20:
		FUNC2(buf+len, "SCSI target device\n");
		break;
	default:
		FUNC2(buf+len, "Unknown 0x%02x\n", vpd->association);
		ret = -EINVAL;
		break;
	}

	if (p_buf)
		FUNC3(p_buf, buf, p_buf_len);
	else
		FUNC1("%s", buf);

	return ret;
}