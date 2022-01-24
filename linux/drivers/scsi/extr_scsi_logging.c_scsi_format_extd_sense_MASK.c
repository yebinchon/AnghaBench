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

/* Variables and functions */
 size_t FUNC0 (char*,size_t,char*,...) ; 
 char* FUNC1 (unsigned char,unsigned char,char const**) ; 

__attribute__((used)) static size_t
FUNC2(char *buffer, size_t buf_len,
		       unsigned char asc, unsigned char ascq)
{
	size_t off = 0;
	const char *extd_sense_fmt = NULL;
	const char *extd_sense_str = FUNC1(asc, ascq,
							    &extd_sense_fmt);

	if (extd_sense_str) {
		off = FUNC0(buffer, buf_len, "Add. Sense: %s",
				extd_sense_str);
		if (extd_sense_fmt)
			off += FUNC0(buffer + off, buf_len - off,
					 "(%s%x)", extd_sense_fmt, ascq);
	} else {
		if (asc >= 0x80)
			off = FUNC0(buffer, buf_len, "<<vendor>>");
		off += FUNC0(buffer + off, buf_len - off,
				 "ASC=0x%x ", asc);
		if (ascq >= 0x80)
			off += FUNC0(buffer + off, buf_len - off,
					 "<<vendor>>");
		off += FUNC0(buffer + off, buf_len - off,
				 "ASCQ=0x%x ", ascq);
	}
	return off;
}