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
struct uas_stream {int /*<<< orphan*/ * req_out; int /*<<< orphan*/ * req_status; void* req_in; } ;
struct f_uas {int /*<<< orphan*/  ep_out; int /*<<< orphan*/  ep_status; int /*<<< orphan*/  ep_in; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct f_uas *fu, struct uas_stream *stream)
{
	stream->req_in = FUNC0(fu->ep_in, GFP_KERNEL);
	if (!stream->req_in)
		goto out;

	stream->req_out = FUNC0(fu->ep_out, GFP_KERNEL);
	if (!stream->req_out)
		goto err_out;

	stream->req_status = FUNC0(fu->ep_status, GFP_KERNEL);
	if (!stream->req_status)
		goto err_sts;

	return 0;
err_sts:
	FUNC1(fu->ep_status, stream->req_status);
	stream->req_status = NULL;
err_out:
	FUNC1(fu->ep_out, stream->req_out);
	stream->req_out = NULL;
out:
	return -ENOMEM;
}