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
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  op; struct tape3592_kekl_query_order* cpdata; } ;
struct tape_device {int dummy; } ;
struct tape390_kekl_pair {int dummy; } ;
struct tape3592_kekl_query_order {int code; int max_count; } ;
struct tape3592_kekl_query_data {int /*<<< orphan*/  kekls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  PERF_SUBSYS_FUNC ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  READ_SS_DATA ; 
 int /*<<< orphan*/  TO_KEKL_QUERY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tape390_kekl_pair*) ; 
 int /*<<< orphan*/  FUNC4 (struct tape3592_kekl_query_data*) ; 
 struct tape3592_kekl_query_data* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tape3592_kekl_query_order*,int /*<<< orphan*/ ,int) ; 
 struct tape_request* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,struct tape3592_kekl_query_order*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,struct tape3592_kekl_query_data*) ; 
 int FUNC10 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct tape_request*) ; 

__attribute__((used)) static int FUNC12(struct tape_device *device,
				struct tape390_kekl_pair *ext_kekls)
{
	struct tape_request *request;
	struct tape3592_kekl_query_order *order;
	struct tape3592_kekl_query_data *int_kekls;
	int rc;

	FUNC0(6, "tape3592_kekl_query\n");
	int_kekls = FUNC5(sizeof(*int_kekls), GFP_KERNEL|GFP_DMA);
	if (!int_kekls)
		return -ENOMEM;
	request = FUNC7(2, sizeof(*order));
	if (FUNC1(request)) {
		rc = FUNC2(request);
		goto fail_malloc;
	}
	order = request->cpdata;
	FUNC6(order,0,sizeof(*order));
	order->code = 0xe2;
	order->max_count = 2;
	request->op = TO_KEKL_QUERY;
	FUNC8(request->cpaddr, PERF_SUBSYS_FUNC, sizeof(*order), order);
	FUNC9(request->cpaddr + 1, READ_SS_DATA, sizeof(*int_kekls),
		     int_kekls);
	rc = FUNC10(device, request);
	if (rc)
		goto fail_request;
	FUNC3(&int_kekls->kekls, ext_kekls);

	rc = 0;
fail_request:
	FUNC11(request);
fail_malloc:
	FUNC4(int_kekls);
	return rc;
}