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
struct nvmem_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nvmem_device*,unsigned int,void*,size_t) ; 

int FUNC1(struct nvmem_device *nvmem,
		       unsigned int offset,
		       size_t bytes, void *buf)
{
	int rc;

	if (!nvmem)
		return -EINVAL;

	rc = FUNC0(nvmem, offset, buf, bytes);

	if (rc)
		return rc;


	return bytes;
}