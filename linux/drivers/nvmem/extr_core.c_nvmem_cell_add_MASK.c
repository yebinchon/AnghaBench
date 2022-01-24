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
struct nvmem_cell {TYPE_1__* nvmem; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEM_CELL_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvmem_cell*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmem_mutex ; 
 int /*<<< orphan*/  nvmem_notifier ; 

__attribute__((used)) static void FUNC4(struct nvmem_cell *cell)
{
	FUNC2(&nvmem_mutex);
	FUNC1(&cell->node, &cell->nvmem->cells);
	FUNC3(&nvmem_mutex);
	FUNC0(&nvmem_notifier, NVMEM_CELL_ADD, cell);
}