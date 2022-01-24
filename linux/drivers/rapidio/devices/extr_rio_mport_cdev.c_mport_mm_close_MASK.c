#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {struct rio_mport_mapping* vm_private_data; } ;
struct rio_mport_mapping {TYPE_1__* md; int /*<<< orphan*/  ref; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mport_release_mapping ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vm_area_struct *vma)
{
	struct rio_mport_mapping *map = vma->vm_private_data;

	FUNC3(MMAP, "%pad", &map->phys_addr);
	FUNC1(&map->md->buf_mutex);
	FUNC0(&map->ref, mport_release_mapping);
	FUNC2(&map->md->buf_mutex);
}