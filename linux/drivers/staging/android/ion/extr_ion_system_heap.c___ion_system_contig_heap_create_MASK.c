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
struct ion_heap {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ion_heap* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ION_HEAP_TYPE_SYSTEM_CONTIG ; 
 int /*<<< orphan*/  kmalloc_ops ; 
 struct ion_heap* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ion_heap *FUNC2(void)
{
	struct ion_heap *heap;

	heap = FUNC1(sizeof(*heap), GFP_KERNEL);
	if (!heap)
		return FUNC0(-ENOMEM);
	heap->ops = &kmalloc_ops;
	heap->type = ION_HEAP_TYPE_SYSTEM_CONTIG;
	heap->name = "ion_system_contig_heap";

	return heap;
}