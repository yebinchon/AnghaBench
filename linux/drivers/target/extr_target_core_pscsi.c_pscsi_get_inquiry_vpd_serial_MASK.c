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
struct t10_wwn {TYPE_1__* t10_dev; int /*<<< orphan*/ * unit_serial; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DF_FIRMWARE_VPD_UNIT_SERIAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 unsigned char INQUIRY ; 
 int /*<<< orphan*/  INQUIRY_VPD_SERIAL_LEN ; 
 int MAX_COMMAND_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC4 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned char*) ; 

__attribute__((used)) static int
FUNC6(struct scsi_device *sdev, struct t10_wwn *wwn)
{
	unsigned char cdb[MAX_COMMAND_SIZE], *buf;
	int ret;

	buf = FUNC1(INQUIRY_VPD_SERIAL_LEN, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC2(cdb, 0, MAX_COMMAND_SIZE);
	cdb[0] = INQUIRY;
	cdb[1] = 0x01; /* Query VPD */
	cdb[2] = 0x80; /* Unit Serial Number */
	FUNC3(INQUIRY_VPD_SERIAL_LEN, &cdb[3]);

	ret = FUNC4(sdev, cdb, DMA_FROM_DEVICE, buf,
			      INQUIRY_VPD_SERIAL_LEN, NULL, HZ, 1, NULL);
	if (ret)
		goto out_free;

	FUNC5(&wwn->unit_serial[0], INQUIRY_VPD_SERIAL_LEN, "%s", &buf[4]);

	wwn->t10_dev->dev_flags |= DF_FIRMWARE_VPD_UNIT_SERIAL;

	FUNC0(buf);
	return 0;

out_free:
	FUNC0(buf);
	return -EPERM;
}