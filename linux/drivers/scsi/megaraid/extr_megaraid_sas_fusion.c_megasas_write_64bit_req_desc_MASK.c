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
struct TYPE_3__ {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
union MEGASAS_REQUEST_DESCRIPTOR_UNION {TYPE_1__ u; } ;
typedef  int u64 ;
struct megasas_instance {int /*<<< orphan*/  hba_lock; TYPE_2__* reg_set; } ;
struct TYPE_4__ {int /*<<< orphan*/  inbound_high_queue_port; int /*<<< orphan*/  inbound_low_queue_port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct megasas_instance *instance,
		union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc)
{
#if defined(writeq) && defined(CONFIG_64BIT)
	u64 req_data = (((u64)le32_to_cpu(req_desc->u.high) << 32) |
		le32_to_cpu(req_desc->u.low));
	writeq(req_data, &instance->reg_set->inbound_low_queue_port);
#else
	unsigned long flags;
	FUNC1(&instance->hba_lock, flags);
	FUNC3(FUNC0(req_desc->u.low),
		&instance->reg_set->inbound_low_queue_port);
	FUNC3(FUNC0(req_desc->u.high),
		&instance->reg_set->inbound_high_queue_port);
	FUNC2(&instance->hba_lock, flags);
#endif
}