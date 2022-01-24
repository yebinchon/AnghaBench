#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gb_operation {TYPE_3__* response; TYPE_1__* request; } ;
struct gb_loopback {int /*<<< orphan*/  elapsed_nsecs; TYPE_4__* connection; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_8__ {TYPE_2__* bundle; } ;
struct TYPE_7__ {int payload_size; void* payload; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {void* payload; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gb_operation* FUNC2 (TYPE_4__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_operation*) ; 
 int FUNC4 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int) ; 

__attribute__((used)) static int FUNC7(struct gb_loopback *gb, int type,
				      void *request, int request_size,
				      void *response, int response_size)
{
	struct gb_operation *operation;
	ktime_t ts, te;
	int ret;

	ts = FUNC5();
	operation = FUNC2(gb->connection, type, request_size,
					response_size, GFP_KERNEL);
	if (!operation)
		return -ENOMEM;

	if (request_size)
		FUNC6(operation->request->payload, request, request_size);

	ret = FUNC4(operation);
	if (ret) {
		FUNC0(&gb->connection->bundle->dev,
			"synchronous operation failed: %d\n", ret);
		goto out_put_operation;
	} else {
		if (response_size == operation->response->payload_size) {
			FUNC6(response, operation->response->payload,
			       response_size);
		} else {
			FUNC0(&gb->connection->bundle->dev,
				"response size %zu expected %d\n",
				operation->response->payload_size,
				response_size);
			ret = -EINVAL;
			goto out_put_operation;
		}
	}

	te = FUNC5();

	/* Calculate the total time the message took */
	gb->elapsed_nsecs = FUNC1(ts, te);

out_put_operation:
	FUNC3(operation);

	return ret;
}