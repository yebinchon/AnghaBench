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
typedef  void* u16 ;
struct vfio_info_cap_header {int next; void* version; void* id; } ;
struct vfio_info_cap {int size; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vfio_info_cap_header* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_info_cap_header*,int /*<<< orphan*/ ,size_t) ; 

struct vfio_info_cap_header *FUNC4(struct vfio_info_cap *caps,
					       size_t size, u16 id, u16 version)
{
	void *buf;
	struct vfio_info_cap_header *header, *tmp;

	buf = FUNC2(caps->buf, caps->size + size, GFP_KERNEL);
	if (!buf) {
		FUNC1(caps->buf);
		caps->size = 0;
		return FUNC0(-ENOMEM);
	}

	caps->buf = buf;
	header = buf + caps->size;

	/* Eventually copied to user buffer, zero */
	FUNC3(header, 0, size);

	header->id = id;
	header->version = version;

	/* Add to the end of the capability chain */
	for (tmp = buf; tmp->next; tmp = buf + tmp->next)
		; /* nothing */

	tmp->next = caps->size;
	caps->size += size;

	return header;
}