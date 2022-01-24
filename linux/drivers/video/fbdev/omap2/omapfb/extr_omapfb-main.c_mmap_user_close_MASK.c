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
struct vm_area_struct {struct omapfb2_mem_region* vm_private_data; } ;
struct omapfb2_mem_region {int /*<<< orphan*/  map_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb2_mem_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb2_mem_region*) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct omapfb2_mem_region *rg = vma->vm_private_data;

	FUNC1(rg);
	FUNC0(&rg->map_count);
	FUNC2(rg);
}