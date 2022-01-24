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
struct gb_loopback_transfer_request {int /*<<< orphan*/  len; } ;
struct gb_loopback {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_LOOPBACK_TYPE_SINK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct gb_loopback*,int /*<<< orphan*/ ,struct gb_loopback_transfer_request*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_loopback_transfer_request*) ; 
 struct gb_loopback_transfer_request* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gb_loopback *gb, u32 len)
{
	struct gb_loopback_transfer_request *request;
	int retval;

	request = FUNC3(len + sizeof(*request), GFP_KERNEL);
	if (!request)
		return -ENOMEM;

	request->len = FUNC0(len);
	retval = FUNC1(gb, GB_LOOPBACK_TYPE_SINK,
					    request, len + sizeof(*request),
					    NULL, 0);
	FUNC2(request);
	return retval;
}