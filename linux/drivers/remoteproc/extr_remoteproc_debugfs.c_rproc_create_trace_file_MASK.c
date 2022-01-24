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
struct rproc_debug_trace {int dummy; } ;
struct rproc {int /*<<< orphan*/  dev; int /*<<< orphan*/  dbg_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char const*,int,int /*<<< orphan*/ ,struct rproc_debug_trace*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  trace_rproc_ops ; 

struct dentry *FUNC2(const char *name, struct rproc *rproc,
				       struct rproc_debug_trace *trace)
{
	struct dentry *tfile;

	tfile = FUNC0(name, 0400, rproc->dbg_dir, trace,
				    &trace_rproc_ops);
	if (!tfile) {
		FUNC1(&rproc->dev, "failed to create debugfs trace entry\n");
		return NULL;
	}

	return tfile;
}