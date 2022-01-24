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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,size_t,char*,...) ; 

__attribute__((used)) static size_t FUNC2(char *logbuf, size_t logbuf_len,
				 const char *name, int tag)
{
	size_t off = 0;

	if (name)
		off += FUNC1(logbuf + off, logbuf_len - off,
				 "[%s] ", name);

	if (FUNC0(off >= logbuf_len))
		return off;

	if (tag >= 0)
		off += FUNC1(logbuf + off, logbuf_len - off,
				 "tag#%d ", tag);
	return off;
}