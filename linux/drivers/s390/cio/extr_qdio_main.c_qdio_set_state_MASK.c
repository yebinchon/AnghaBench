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
struct qdio_irq {int state; } ;
typedef  enum qdio_irq_states { ____Placeholder_qdio_irq_states } qdio_irq_states ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qdio_irq*,char*,int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct qdio_irq *irq_ptr,
				  enum qdio_irq_states state)
{
	FUNC0(DBF_INFO, irq_ptr, "newstate: %1d", state);

	irq_ptr->state = state;
	FUNC1();
}