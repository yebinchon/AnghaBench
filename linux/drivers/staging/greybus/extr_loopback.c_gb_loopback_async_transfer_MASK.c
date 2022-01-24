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
typedef  scalar_t__ u32 ;
struct gb_loopback_transfer_response {int dummy; } ;
struct gb_loopback_transfer_request {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct gb_loopback {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_LOOPBACK_TYPE_TRANSFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct gb_loopback*,int /*<<< orphan*/ ,struct gb_loopback_transfer_request*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_loopback_async_transfer_complete ; 
 int /*<<< orphan*/  FUNC2 (struct gb_loopback_transfer_request*) ; 
 struct gb_loopback_transfer_request* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gb_loopback *gb, u32 len)
{
	struct gb_loopback_transfer_request *request;
	int retval, response_len;

	request = FUNC3(len + sizeof(*request), GFP_KERNEL);
	if (!request)
		return -ENOMEM;

	FUNC4(request->data, 0x5A, len);

	request->len = FUNC0(len);
	response_len = sizeof(struct gb_loopback_transfer_response);
	retval = FUNC1(gb, GB_LOOPBACK_TYPE_TRANSFER,
					     request, len + sizeof(*request),
					     len + response_len,
					     gb_loopback_async_transfer_complete);
	if (retval)
		goto gb_error;

gb_error:
	FUNC2(request);
	return retval;
}