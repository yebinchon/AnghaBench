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
 scalar_t__ FUNC0 (char*,size_t,char*,unsigned char const) ; 
 int FUNC1 (unsigned char const*) ; 
 size_t FUNC2 (char*,size_t,unsigned char const*) ; 

size_t FUNC3(char *logbuf, size_t logbuf_len,
			     const unsigned char *cdb, size_t cdb_len)
{
	int len, k;
	size_t off;

	off = FUNC2(logbuf, logbuf_len, cdb);
	if (off >= logbuf_len)
		return off;
	len = FUNC1(cdb);
	if (cdb_len < len)
		len = cdb_len;
	/* print out all bytes in cdb */
	for (k = 0; k < len; ++k) {
		if (off > logbuf_len - 3)
			break;
		off += FUNC0(logbuf + off, logbuf_len - off,
				 " %02x", cdb[k]);
	}
	return off;
}