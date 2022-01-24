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
struct afs_call {int /*<<< orphan*/  out_volsync; int /*<<< orphan*/  out_dir_scb; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct afs_call*) ; 
 int FUNC2 (int /*<<< orphan*/  const**,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct afs_call *call)
{
	const __be32 *bp;
	int ret;

	ret = FUNC1(call);
	if (ret < 0)
		return ret;

	/* unmarshall the reply once we've received all of it */
	bp = call->buffer;
	ret = FUNC2(&bp, call, call->out_dir_scb);
	if (ret < 0)
		return ret;
	FUNC3(&bp, call->out_volsync);

	FUNC0(" = 0 [done]");
	return 0;
}