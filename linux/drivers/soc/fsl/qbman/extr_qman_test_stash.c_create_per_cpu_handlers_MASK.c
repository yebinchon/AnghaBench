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
struct hp_handler {int /*<<< orphan*/  node; int /*<<< orphan*/  frame_ptr; int /*<<< orphan*/  addr; int /*<<< orphan*/  processor_id; } ;
struct hp_cpu {int /*<<< orphan*/  handlers; int /*<<< orphan*/  processor_id; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HP_PER_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  frame_dma ; 
 int /*<<< orphan*/  frame_ptr ; 
 int /*<<< orphan*/  hp_cpu_list ; 
 int /*<<< orphan*/  hp_cpu_list_length ; 
 int /*<<< orphan*/  hp_cpus ; 
 int /*<<< orphan*/  hp_handler_slab ; 
 int /*<<< orphan*/  hp_lock ; 
 struct hp_handler* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct hp_cpu* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void)
{
	struct hp_handler *handler;
	int loop;
	struct hp_cpu *hp_cpu = FUNC8(&hp_cpus);

	hp_cpu->processor_id = FUNC5();
	FUNC6(&hp_lock);
	FUNC3(&hp_cpu->node, &hp_cpu_list);
	hp_cpu_list_length++;
	FUNC7(&hp_lock);
	FUNC0(&hp_cpu->handlers);
	for (loop = 0; loop < HP_PER_CPU; loop++) {
		handler = FUNC2(hp_handler_slab, GFP_KERNEL);
		if (!handler) {
			FUNC4("kmem_cache_alloc() failed");
			FUNC1(1);
			return -EIO;
		}
		handler->processor_id = hp_cpu->processor_id;
		handler->addr = frame_dma;
		handler->frame_ptr = frame_ptr;
		FUNC3(&handler->node, &hp_cpu->handlers);
	}
	return 0;
}