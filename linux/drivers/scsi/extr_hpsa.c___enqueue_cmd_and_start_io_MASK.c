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
struct TYPE_4__ {int /*<<< orphan*/  (* submit_command ) (struct ctlr_info*,struct CommandList*) ;} ;
struct ctlr_info {int* reply_map; TYPE_2__ access; scalar_t__ vaddr; int /*<<< orphan*/  commands_outstanding; } ;
struct CommandList {int cmd_type; int /*<<< orphan*/  busaddr; TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  commands_outstanding; } ;

/* Variables and functions */
#define  CMD_IOACCEL1 130 
#define  CMD_IOACCEL2 129 
 scalar_t__ IOACCEL2_INBOUND_POSTQ_32 ; 
#define  IOACCEL2_TMF 128 
 scalar_t__ SA5_REQUEST_PORT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ctlr_info*,struct CommandList*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctlr_info*,struct CommandList*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ctlr_info*,struct CommandList*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ctlr_info*,struct CommandList*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct ctlr_info *h,
	struct CommandList *c, int reply_queue)
{
	FUNC1(h, c);
	FUNC0(&h->commands_outstanding);
	if (c->device)
		FUNC0(&c->device->commands_outstanding);

	reply_queue = h->reply_map[FUNC2()];
	switch (c->cmd_type) {
	case CMD_IOACCEL1:
		FUNC3(h, c, reply_queue);
		FUNC8(c->busaddr, h->vaddr + SA5_REQUEST_PORT_OFFSET);
		break;
	case CMD_IOACCEL2:
		FUNC4(h, c, reply_queue);
		FUNC8(c->busaddr, h->vaddr + IOACCEL2_INBOUND_POSTQ_32);
		break;
	case IOACCEL2_TMF:
		FUNC5(h, c, reply_queue);
		FUNC8(c->busaddr, h->vaddr + IOACCEL2_INBOUND_POSTQ_32);
		break;
	default:
		FUNC6(h, c, reply_queue);
		h->access.submit_command(h, c);
	}
}