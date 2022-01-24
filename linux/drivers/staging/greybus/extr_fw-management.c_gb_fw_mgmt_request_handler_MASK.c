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
typedef  int u8 ;
struct gb_operation {int type; TYPE_2__* connection; } ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  GB_FW_MGMT_TYPE_BACKEND_FW_UPDATED 129 
#define  GB_FW_MGMT_TYPE_LOADED_FW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct gb_operation*) ; 
 int FUNC2 (struct gb_operation*) ; 

int FUNC3(struct gb_operation *op)
{
	u8 type = op->type;

	switch (type) {
	case GB_FW_MGMT_TYPE_LOADED_FW:
		return FUNC2(op);
	case GB_FW_MGMT_TYPE_BACKEND_FW_UPDATED:
		return FUNC1(op);
	default:
		FUNC0(&op->connection->bundle->dev,
			"unsupported request: %u\n", type);
		return -EINVAL;
	}
}