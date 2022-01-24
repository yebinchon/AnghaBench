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
struct controlvm_message {int dummy; } ;
struct parahotplug_request {struct controlvm_message msg; int /*<<< orphan*/  expiration; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct parahotplug_request* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static struct parahotplug_request *FUNC3(
						struct controlvm_message *msg)
{
	struct parahotplug_request *req;

	req = FUNC0(sizeof(*req), GFP_KERNEL);
	if (!req)
		return NULL;
	req->id = FUNC2();
	req->expiration = FUNC1();
	req->msg = *msg;
	return req;
}