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
 int EIO ; 
 int ENODATA ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  hsa_available ; 
 scalar_t__ hsa_buf ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,size_t) ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned long,int) ; 

int FUNC4(void *dest, unsigned long src, size_t count)
{
	unsigned long offset, bytes;

	if (!hsa_available)
		return -ENODATA;

	while (count) {
		if (FUNC3(hsa_buf, src / PAGE_SIZE + 2, 1)) {
			FUNC0("sclp_sdias_copy() failed\n");
			return -EIO;
		}
		offset = src % PAGE_SIZE;
		bytes = FUNC2(PAGE_SIZE - offset, count);
		FUNC1(dest, hsa_buf + offset, bytes);
		src += bytes;
		dest += bytes;
		count -= bytes;
	}
	return 0;
}