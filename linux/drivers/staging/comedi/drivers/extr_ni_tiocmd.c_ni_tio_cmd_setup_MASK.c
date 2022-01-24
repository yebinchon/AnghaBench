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
struct ni_route_tables {int dummy; } ;
struct ni_gpct {unsigned int counter_index; TYPE_2__* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; TYPE_1__* async; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; unsigned int scan_begin_arg; scalar_t__ convert_src; unsigned int convert_arg; int flags; } ;
struct TYPE_4__ {struct ni_route_tables* routing_tables; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int CMDF_WAKE_EOS ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ NI_NAMES_BASE ; 
 scalar_t__ TRIG_EXT ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,struct ni_route_tables const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (struct ni_gpct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	struct ni_gpct *counter = s->private;
	unsigned int cidx = counter->counter_index;
	const struct ni_route_tables *routing_tables =
		counter->counter_dev->routing_tables;
	int set_gate_source = 0;
	unsigned int gate_source;
	int retval = 0;

	if (cmd->scan_begin_src == TRIG_EXT) {
		set_gate_source = 1;
		gate_source = cmd->scan_begin_arg;
	} else if (cmd->convert_src == TRIG_EXT) {
		set_gate_source = 1;
		gate_source = cmd->convert_arg;
	}
	if (set_gate_source) {
		if (FUNC0(gate_source) >= NI_NAMES_BASE) {
			/* Lookup and use the real register values */
			int reg = FUNC4(FUNC0(gate_source),
						   FUNC3(cidx),
						   routing_tables);
			if (reg < 0)
				return -EINVAL;
			retval = FUNC7(counter, 0, reg);
		} else {
			/*
			 * This function must be used separately since it does
			 * not expect real register values and attempts to
			 * convert these to real register values.
			 */
			retval = FUNC6(counter, 0, gate_source);
		}
	}
	if (cmd->flags & CMDF_WAKE_EOS) {
		FUNC5(counter, FUNC2(cidx),
				FUNC1(cidx),
				FUNC1(cidx));
	}
	return retval;
}