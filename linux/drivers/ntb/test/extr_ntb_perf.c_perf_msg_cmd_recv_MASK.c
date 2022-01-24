#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct perf_ctx {TYPE_1__* ntb; } ;
typedef  enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  PERF_MSG_CMD ; 
 int /*<<< orphan*/  PERF_MSG_HDATA ; 
 int /*<<< orphan*/  PERF_MSG_LDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct perf_ctx *perf, int *pidx,
			     enum perf_cmd *cmd, u64 *data)
{
	u64 inbits;
	u32 val;

	inbits = FUNC3(perf->ntb);

	if (FUNC1(FUNC5(perf->ntb) & inbits) < 3)
		return -ENODATA;

	val = FUNC4(perf->ntb, pidx, PERF_MSG_CMD);
	*cmd = val;

	val = FUNC4(perf->ntb, pidx, PERF_MSG_LDATA);
	*data = val;

	val = FUNC4(perf->ntb, pidx, PERF_MSG_HDATA);
	*data |= (u64)val << 32;

	/* Next command can be retrieved from now */
	FUNC2(perf->ntb, inbits);

	FUNC0(&perf->ntb->dev, "CMD recv: %d 0x%llx\n", *cmd, *data);

	return 0;
}