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
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int RECEIVE_DIAGNOSTIC ; 
 int /*<<< orphan*/  SES_RETRIES ; 
 int /*<<< orphan*/  SES_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int,unsigned char) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev, int page_code,
			 void *buf, int bufflen)
{
	int ret;
	unsigned char cmd[] = {
		RECEIVE_DIAGNOSTIC,
		1,		/* Set PCV bit */
		page_code,
		bufflen >> 8,
		bufflen & 0xff,
		0
	};
	unsigned char recv_page_code;

	ret =  FUNC1(sdev, cmd, DMA_FROM_DEVICE, buf, bufflen,
				NULL, SES_TIMEOUT, SES_RETRIES, NULL);
	if (FUNC3(ret))
		return ret;

	recv_page_code = ((unsigned char *)buf)[0];

	if (FUNC0(recv_page_code == page_code))
		return ret;

	/* successful diagnostic but wrong page code.  This happens to some
	 * USB devices, just print a message and pretend there was an error */

	FUNC2(KERN_ERR, sdev,
		    "Wrong diagnostic page; asked for %d got %u\n",
		    page_code, recv_page_code);

	return -EINVAL;
}