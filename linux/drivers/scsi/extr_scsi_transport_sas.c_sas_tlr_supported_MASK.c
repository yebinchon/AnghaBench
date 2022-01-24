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
struct sas_end_device {int tlr_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int const,int /*<<< orphan*/ ) ; 
 struct sas_end_device* FUNC2 (struct scsi_device*) ; 
 scalar_t__ FUNC3 (struct scsi_device*,int,char*,int const) ; 

unsigned int
FUNC4(struct scsi_device *sdev)
{
	const int vpd_len = 32;
	struct sas_end_device *rdev = FUNC2(sdev);
	char *buffer = FUNC1(vpd_len, GFP_KERNEL);
	int ret = 0;

	if (!buffer)
		goto out;

	if (FUNC3(sdev, 0x90, buffer, vpd_len))
		goto out;

	/*
	 * Magic numbers: the VPD Protocol page (0x90)
	 * has a 4 byte header and then one entry per device port
	 * the TLR bit is at offset 8 on each port entry
	 * if we take the first port, that's at total offset 12
	 */
	ret = buffer[12] & 0x01;

 out:
	FUNC0(buffer);
	rdev->tlr_supported = ret;
	return ret;

}