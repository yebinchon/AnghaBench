#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  da; int /*<<< orphan*/  len; } ;
struct rproc_debug_trace {int /*<<< orphan*/  node; int /*<<< orphan*/  tfile; struct rproc* rproc; TYPE_1__ trace_mem; } ;
struct device {int dummy; } ;
struct rproc {int num_traces; int /*<<< orphan*/  traces; struct device dev; } ;
struct fw_rsc_trace {int /*<<< orphan*/  len; int /*<<< orphan*/  da; scalar_t__ reserved; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rproc_debug_trace*) ; 
 struct rproc_debug_trace* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rproc*,struct rproc_debug_trace*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC7(struct rproc *rproc, struct fw_rsc_trace *rsc,
			      int offset, int avail)
{
	struct rproc_debug_trace *trace;
	struct device *dev = &rproc->dev;
	char name[15];

	if (sizeof(*rsc) > avail) {
		FUNC1(dev, "trace rsc is truncated\n");
		return -EINVAL;
	}

	/* make sure reserved bytes are zeroes */
	if (rsc->reserved) {
		FUNC1(dev, "trace rsc has non zero reserved bytes\n");
		return -EINVAL;
	}

	trace = FUNC3(sizeof(*trace), GFP_KERNEL);
	if (!trace)
		return -ENOMEM;

	/* set the trace buffer dma properties */
	trace->trace_mem.len = rsc->len;
	trace->trace_mem.da = rsc->da;

	/* set pointer on rproc device */
	trace->rproc = rproc;

	/* make sure snprintf always null terminates, even if truncating */
	FUNC6(name, sizeof(name), "trace%d", rproc->num_traces);

	/* create the debugfs entry */
	trace->tfile = FUNC5(name, rproc, trace);
	if (!trace->tfile) {
		FUNC2(trace);
		return -EINVAL;
	}

	FUNC4(&trace->node, &rproc->traces);

	rproc->num_traces++;

	FUNC0(dev, "%s added: da 0x%x, len 0x%x\n",
		name, rsc->da, rsc->len);

	return 0;
}