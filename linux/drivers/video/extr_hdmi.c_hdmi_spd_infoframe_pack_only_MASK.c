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
typedef  size_t u8 ;
struct hdmi_spd_infoframe {size_t length; size_t type; size_t version; size_t sdi; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOSPC ; 
 size_t HDMI_INFOFRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int FUNC1 (struct hdmi_spd_infoframe const*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

ssize_t FUNC4(const struct hdmi_spd_infoframe *frame,
				     void *buffer, size_t size)
{
	u8 *ptr = buffer;
	size_t length;
	int ret;

	ret = FUNC1(frame);
	if (ret)
		return ret;

	length = HDMI_INFOFRAME_HEADER_SIZE + frame->length;

	if (size < length)
		return -ENOSPC;

	FUNC3(buffer, 0, size);

	ptr[0] = frame->type;
	ptr[1] = frame->version;
	ptr[2] = frame->length;
	ptr[3] = 0; /* checksum */

	/* start infoframe payload */
	ptr += HDMI_INFOFRAME_HEADER_SIZE;

	FUNC2(ptr, frame->vendor, sizeof(frame->vendor));
	FUNC2(ptr + 8, frame->product, sizeof(frame->product));

	ptr[24] = frame->sdi;

	FUNC0(buffer, length);

	return length;
}