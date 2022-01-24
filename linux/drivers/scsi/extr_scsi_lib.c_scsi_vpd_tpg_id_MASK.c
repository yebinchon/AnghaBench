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
struct scsi_vpd {unsigned char* data; int len; } ;
struct scsi_device {int /*<<< orphan*/  vpd_pg83; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENXIO ; 
 int FUNC0 (unsigned char const*) ; 
 struct scsi_vpd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct scsi_device *sdev, int *rel_id)
{
	const unsigned char *d;
	const struct scsi_vpd *vpd_pg83;
	int group_id = -EAGAIN, rel_port = -1;

	FUNC2();
	vpd_pg83 = FUNC1(sdev->vpd_pg83);
	if (!vpd_pg83) {
		FUNC3();
		return -ENXIO;
	}

	d = vpd_pg83->data + 4;
	while (d < vpd_pg83->data + vpd_pg83->len) {
		switch (d[1] & 0xf) {
		case 0x4:
			/* Relative target port */
			rel_port = FUNC0(&d[6]);
			break;
		case 0x5:
			/* Target port group */
			group_id = FUNC0(&d[6]);
			break;
		default:
			break;
		}
		d += d[3] + 4;
	}
	FUNC3();

	if (group_id >= 0 && rel_id && rel_port != -1)
		*rel_id = rel_port;

	return group_id;
}