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
struct afs_fid {int dummy; } ;
struct afs_call {int /*<<< orphan*/  out_volsync; int /*<<< orphan*/  out_scb; int /*<<< orphan*/  out_dir_scb; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  unmarshall; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct afs_call*) ; 
 int FUNC2 (int /*<<< orphan*/  const**,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,struct afs_fid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct afs_call *call)
{
	struct afs_fid fid;
	const __be32 *bp;
	int ret;

	FUNC0("{%u}", call->unmarshall);

	ret = FUNC1(call);
	if (ret < 0)
		return ret;

	bp = call->buffer;
	ret = FUNC2(&bp, call, call->out_dir_scb);
	if (ret < 0)
		return ret;

	FUNC3(&bp, &fid);
	ret = FUNC2(&bp, call, call->out_scb);
	if (ret < 0)
		return ret;
	/* Was deleted if vnode->status.abort_code == VNOVNODE. */

	FUNC4(&bp, call->out_volsync);
	return 0;
}