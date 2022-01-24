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
struct tb_protocol_handler {int /*<<< orphan*/  list; int /*<<< orphan*/  uuid; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  protocol_handlers ; 
 int /*<<< orphan*/  tb_xdp_uuid ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdomain_lock ; 

int FUNC4(struct tb_protocol_handler *handler)
{
	if (!handler->uuid || !handler->callback)
		return -EINVAL;
	if (FUNC3(handler->uuid, &tb_xdp_uuid))
		return -EINVAL;

	FUNC1(&xdomain_lock);
	FUNC0(&handler->list, &protocol_handlers);
	FUNC2(&xdomain_lock);

	return 0;
}