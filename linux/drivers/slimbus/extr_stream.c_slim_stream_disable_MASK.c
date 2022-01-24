#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct slim_stream_runtime {int num_ports; int /*<<< orphan*/ * ports; TYPE_1__* dev; } ;
struct slim_controller {int /*<<< orphan*/  (* disable_stream ) (struct slim_stream_runtime*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  mc; } ;
struct TYPE_5__ {struct slim_controller* ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SLIM_LA_MANAGER ; 
 int /*<<< orphan*/  SLIM_MSG_MC_BEGIN_RECONFIGURATION ; 
 int /*<<< orphan*/  SLIM_MSG_MC_RECONFIGURE_NOW ; 
 int /*<<< orphan*/  FUNC1 (struct slim_stream_runtime*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct slim_controller*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct slim_stream_runtime*) ; 
 TYPE_2__ txn ; 

int FUNC4(struct slim_stream_runtime *stream)
{
	FUNC0(txn, SLIM_MSG_MC_BEGIN_RECONFIGURATION,
				3, SLIM_LA_MANAGER, NULL);
	struct slim_controller *ctrl = stream->dev->ctrl;
	int ret, i;

	if (ctrl->disable_stream)
		ctrl->disable_stream(stream);

	ret = FUNC2(ctrl, &txn);
	if (ret)
		return ret;

	for (i = 0; i < stream->num_ports; i++)
		FUNC1(stream, &stream->ports[i]);

	txn.mc = SLIM_MSG_MC_RECONFIGURE_NOW;

	return FUNC2(ctrl, &txn);
}