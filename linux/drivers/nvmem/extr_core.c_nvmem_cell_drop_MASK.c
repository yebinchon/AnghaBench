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
struct nvmem_cell {struct nvmem_cell* name; int /*<<< orphan*/  np; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEM_CELL_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvmem_cell*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmem_cell*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmem_mutex ; 
 int /*<<< orphan*/  nvmem_notifier ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nvmem_cell *cell)
{
	FUNC0(&nvmem_notifier, NVMEM_CELL_REMOVE, cell);
	FUNC3(&nvmem_mutex);
	FUNC2(&cell->node);
	FUNC4(&nvmem_mutex);
	FUNC5(cell->np);
	FUNC1(cell->name);
	FUNC1(cell);
}