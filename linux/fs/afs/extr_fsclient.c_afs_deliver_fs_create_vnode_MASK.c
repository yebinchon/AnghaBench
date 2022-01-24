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
struct afs_call {int /*<<< orphan*/  out_volsync; int /*<<< orphan*/  out_scb; int /*<<< orphan*/  out_dir_scb; int /*<<< orphan*/  out_fid; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,struct afs_call*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const**,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct afs_call *call)
{
	const __be32 *bp;
	int ret;

	ret = FUNC1(call);
	if (ret < 0)
		return ret;

	/* unmarshall the reply once we've received all of it */
	bp = call->buffer;
	FUNC4(&bp, call->out_fid);
	ret = FUNC3(&bp, call, call->out_scb);
	if (ret < 0)
		return ret;
	ret = FUNC3(&bp, call, call->out_dir_scb);
	if (ret < 0)
		return ret;
	FUNC2(&bp, call, call->out_scb);
	FUNC5(&bp, call->out_volsync);

	FUNC0(" = 0 [done]");
	return 0;
}