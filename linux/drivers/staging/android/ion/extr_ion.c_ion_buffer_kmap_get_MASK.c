#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ion_buffer {void* vaddr; scalar_t__ kmap_cnt; TYPE_2__* heap; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {void* (* map_kernel ) (TYPE_2__*,struct ion_buffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 void* FUNC3 (TYPE_2__*,struct ion_buffer*) ; 

__attribute__((used)) static void *FUNC4(struct ion_buffer *buffer)
{
	void *vaddr;

	if (buffer->kmap_cnt) {
		buffer->kmap_cnt++;
		return buffer->vaddr;
	}
	vaddr = buffer->heap->ops->map_kernel(buffer->heap, buffer);
	if (FUNC2(!vaddr,
		      "heap->ops->map_kernel should return ERR_PTR on error"))
		return FUNC0(-EINVAL);
	if (FUNC1(vaddr))
		return vaddr;
	buffer->vaddr = vaddr;
	buffer->kmap_cnt++;
	return vaddr;
}