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
struct uas_stream {int /*<<< orphan*/ * req_status; int /*<<< orphan*/ * req_out; int /*<<< orphan*/ * req_in; } ;
struct f_uas {int /*<<< orphan*/  ep_status; int /*<<< orphan*/  ep_out; int /*<<< orphan*/  ep_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct f_uas *fu, struct uas_stream *stream)
{
	/* We have either all three allocated or none */
	if (!stream->req_in)
		return;

	FUNC0(fu->ep_in, stream->req_in);
	FUNC0(fu->ep_out, stream->req_out);
	FUNC0(fu->ep_status, stream->req_status);

	stream->req_in = NULL;
	stream->req_out = NULL;
	stream->req_status = NULL;
}