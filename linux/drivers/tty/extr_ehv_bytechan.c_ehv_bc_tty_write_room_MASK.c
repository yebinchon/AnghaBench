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
struct tty_struct {struct ehv_bc_data* driver_data; } ;
struct ehv_bc_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *ttys)
{
	struct ehv_bc_data *bc = ttys->driver_data;
	unsigned long flags;
	int count;

	FUNC1(&bc->lock, flags);
	count = FUNC0(bc->head, bc->tail, BUF_SIZE);
	FUNC2(&bc->lock, flags);

	return count;
}