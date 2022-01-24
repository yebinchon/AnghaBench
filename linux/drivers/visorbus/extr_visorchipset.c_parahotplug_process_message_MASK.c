#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct parahotplug_request {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_4__ {TYPE_3__ state; } ;
struct TYPE_5__ {TYPE_1__ device_change_state; } ;
struct controlvm_message {TYPE_2__ cmd; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int CONTROLVM_RESP_SUCCESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct parahotplug_request* FUNC2 (struct controlvm_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct parahotplug_request*) ; 
 int FUNC4 (struct parahotplug_request*) ; 
 int /*<<< orphan*/  parahotplug_request_list ; 
 int /*<<< orphan*/  parahotplug_request_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct controlvm_message *inmsg)
{
	struct parahotplug_request *req;
	int err;

	req = FUNC2(inmsg);
	if (!req)
		return -ENOMEM;
	/*
	 * For enable messages, just respond with success right away, we don't
	 * need to wait to see if the enable was successful.
	 */
	if (inmsg->cmd.device_change_state.state.active) {
		err = FUNC4(req);
		if (err)
			goto err_respond;
		FUNC0(&inmsg->hdr, CONTROLVM_RESP_SUCCESS,
				  &inmsg->cmd.device_change_state.state);
		FUNC3(req);
		return 0;
	}
	/*
	 * For disable messages, add the request to the request list before
	 * kicking off the udev script. It won't get responded to until the
	 * script has indicated it's done.
	 */
	FUNC5(&parahotplug_request_list_lock);
	FUNC1(&req->list, &parahotplug_request_list);
	FUNC6(&parahotplug_request_list_lock);
	err = FUNC4(req);
	if (err)
		goto err_respond;
	return 0;

err_respond:
	FUNC0(&inmsg->hdr, err,
			  &inmsg->cmd.device_change_state.state);
	return err;
}