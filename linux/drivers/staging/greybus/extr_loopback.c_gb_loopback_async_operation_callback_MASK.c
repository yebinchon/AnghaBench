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
struct gb_operation {int /*<<< orphan*/  id; } ;
struct gb_loopback_async_operation {int (* completion ) (struct gb_loopback_async_operation*) ;struct gb_loopback* gb; int /*<<< orphan*/  ts; } ;
struct gb_loopback {int /*<<< orphan*/  wq_completion; int /*<<< orphan*/  outstanding_operations; TYPE_2__* connection; int /*<<< orphan*/  mutex; int /*<<< orphan*/  iteration_count; int /*<<< orphan*/  requests_timedout; int /*<<< orphan*/  error; int /*<<< orphan*/  elapsed_nsecs; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_loopback*,int) ; 
 struct gb_loopback_async_operation* FUNC4 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*) ; 
 int FUNC6 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_loopback_async_operation*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct gb_loopback_async_operation*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct gb_operation *operation)
{
	struct gb_loopback_async_operation *op_async;
	struct gb_loopback *gb;
	ktime_t te;
	int result;

	te = FUNC8();
	result = FUNC6(operation);
	op_async = FUNC4(operation);
	gb = op_async->gb;

	FUNC9(&gb->mutex);

	if (!result && op_async->completion)
		result = op_async->completion(op_async);

	if (!result) {
		gb->elapsed_nsecs = FUNC2(op_async->ts, te);
	} else {
		gb->error++;
		if (result == -ETIMEDOUT)
			gb->requests_timedout++;
	}

	gb->iteration_count++;
	FUNC3(gb, result);

	FUNC10(&gb->mutex);

	FUNC1(&gb->connection->bundle->dev, "complete operation %d\n",
		operation->id);

	/* Wake up waiters */
	FUNC0(&op_async->gb->outstanding_operations);
	FUNC12(&gb->wq_completion);

	/* Release resources */
	FUNC5(operation);
	FUNC7(op_async);
}