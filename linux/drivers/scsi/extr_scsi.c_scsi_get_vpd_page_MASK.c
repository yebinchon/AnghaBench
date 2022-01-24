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
typedef  unsigned char u8 ;
struct scsi_device {scalar_t__ skip_vpd_pages; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct scsi_device*,unsigned char*,unsigned char,int) ; 

int FUNC2(struct scsi_device *sdev, u8 page, unsigned char *buf,
		      int buf_len)
{
	int i, result;

	if (sdev->skip_vpd_pages)
		goto fail;

	/* Ask for all the pages supported by this device */
	result = FUNC1(sdev, buf, 0, buf_len);
	if (result < 4)
		goto fail;

	/* If the user actually wanted this page, we can skip the rest */
	if (page == 0)
		return 0;

	for (i = 4; i < FUNC0(result, buf_len); i++)
		if (buf[i] == page)
			goto found;

	if (i < result && i >= buf_len)
		/* ran off the end of the buffer, give us benefit of doubt */
		goto found;
	/* The device claims it doesn't support the requested page */
	goto fail;

 found:
	result = FUNC1(sdev, buf, page, buf_len);
	if (result < 0)
		goto fail;

	return 0;

 fail:
	return -EINVAL;
}