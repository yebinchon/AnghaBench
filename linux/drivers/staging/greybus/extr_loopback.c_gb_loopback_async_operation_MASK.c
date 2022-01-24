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
struct gb_operation {TYPE_1__* request; } ;
struct gb_loopback_async_operation {int /*<<< orphan*/  ts; void* completion; struct gb_operation* operation; struct gb_loopback* gb; } ;
struct gb_loopback {int /*<<< orphan*/  outstanding_operations; int /*<<< orphan*/  jiffy_timeout; int /*<<< orphan*/  connection; } ;
struct TYPE_2__ {int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gb_loopback_async_operation_callback ; 
 struct gb_operation* FUNC2 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_operation*) ; 
 int FUNC4 (struct gb_operation*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*,struct gb_loopback_async_operation*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_loopback_async_operation*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct gb_loopback_async_operation* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC11(struct gb_loopback *gb, int type,
				       void *request, int request_size,
				       int response_size,
				       void *completion)
{
	struct gb_loopback_async_operation *op_async;
	struct gb_operation *operation;
	int ret;

	op_async = FUNC9(sizeof(*op_async), GFP_KERNEL);
	if (!op_async)
		return -ENOMEM;

	operation = FUNC2(gb->connection, type, request_size,
					response_size, GFP_KERNEL);
	if (!operation) {
		FUNC7(op_async);
		return -ENOMEM;
	}

	if (request_size)
		FUNC10(operation->request->payload, request, request_size);

	FUNC5(operation, op_async);

	op_async->gb = gb;
	op_async->operation = operation;
	op_async->completion = completion;

	op_async->ts = FUNC8();

	FUNC1(&gb->outstanding_operations);
	ret = FUNC4(operation,
					gb_loopback_async_operation_callback,
					FUNC6(gb->jiffy_timeout),
					GFP_KERNEL);
	if (ret) {
		FUNC0(&gb->outstanding_operations);
		FUNC3(operation);
		FUNC7(op_async);
	}
	return ret;
}