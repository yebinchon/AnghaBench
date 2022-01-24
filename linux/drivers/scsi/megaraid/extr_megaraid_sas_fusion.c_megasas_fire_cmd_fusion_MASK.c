#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  low; } ;
union MEGASAS_REQUEST_DESCRIPTOR_UNION {TYPE_1__ u; } ;
struct megasas_instance {TYPE_2__* reg_set; scalar_t__ atomic_desc_support; } ;
struct TYPE_4__ {int /*<<< orphan*/  inbound_single_queue_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*,union MEGASAS_REQUEST_DESCRIPTOR_UNION*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct megasas_instance *instance,
		union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc)
{
	if (instance->atomic_desc_support)
		FUNC2(FUNC0(req_desc->u.low),
			&instance->reg_set->inbound_single_queue_port);
	else
		FUNC1(instance, req_desc);
}