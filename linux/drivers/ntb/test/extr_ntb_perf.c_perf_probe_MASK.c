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
struct perf_ctx {int dummy; } ;
struct ntb_dev {int dummy; } ;
struct ntb_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_ctx*) ; 
 int FUNC1 (struct perf_ctx*) ; 
 struct perf_ctx* FUNC2 (struct ntb_dev*) ; 
 int FUNC3 (struct perf_ctx*) ; 
 int FUNC4 (struct perf_ctx*) ; 
 int FUNC5 (struct perf_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_ctx*) ; 

__attribute__((used)) static int FUNC8(struct ntb_client *client, struct ntb_dev *ntb)
{
	struct perf_ctx *perf;
	int ret;

	perf = FUNC2(ntb);
	if (FUNC0(perf))
		return FUNC1(perf);

	ret = FUNC4(perf);
	if (ret)
		return ret;

	FUNC6(perf);

	ret = FUNC5(perf);
	if (ret)
		return ret;

	ret = FUNC3(perf);
	if (ret)
		return ret;

	FUNC7(perf);

	return 0;
}