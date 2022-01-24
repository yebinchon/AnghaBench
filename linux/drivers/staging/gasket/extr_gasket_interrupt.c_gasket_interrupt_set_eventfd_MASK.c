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
struct gasket_interrupt_data {int num_interrupts; struct eventfd_ctx** eventfd_ctxs; } ;
struct eventfd_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct eventfd_ctx*) ; 
 int FUNC1 (struct eventfd_ctx*) ; 
 struct eventfd_ctx* FUNC2 (int) ; 

int FUNC3(struct gasket_interrupt_data *interrupt_data,
				 int interrupt, int event_fd)
{
	struct eventfd_ctx *ctx = FUNC2(event_fd);

	if (FUNC0(ctx))
		return FUNC1(ctx);

	if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
		return -EINVAL;

	interrupt_data->eventfd_ctxs[interrupt] = ctx;
	return 0;
}