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
struct vfio_info_cap_header {int /*<<< orphan*/  version; int /*<<< orphan*/  id; } ;
struct vfio_info_cap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfio_info_cap_header*) ; 
 int FUNC1 (struct vfio_info_cap_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_info_cap_header*,struct vfio_info_cap_header*,size_t) ; 
 struct vfio_info_cap_header* FUNC3 (struct vfio_info_cap*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct vfio_info_cap *caps,
			     struct vfio_info_cap_header *cap, size_t size)
{
	struct vfio_info_cap_header *header;

	header = FUNC3(caps, size, cap->id, cap->version);
	if (FUNC0(header))
		return FUNC1(header);

	FUNC2(header + 1, cap + 1, size - sizeof(*header));

	return 0;
}