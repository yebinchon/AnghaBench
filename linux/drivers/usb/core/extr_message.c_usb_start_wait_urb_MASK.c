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
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer_length; TYPE_2__* ep; TYPE_1__* dev; struct api_context* context; } ;
struct api_context {int status; int /*<<< orphan*/  done; } ;
struct TYPE_6__ {int /*<<< orphan*/  comm; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct urb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct urb *urb, int timeout, int *actual_length)
{
	struct api_context ctx;
	unsigned long expire;
	int retval;

	FUNC1(&ctx.done);
	urb->context = &ctx;
	urb->actual_length = 0;
	retval = FUNC7(urb, GFP_NOIO);
	if (FUNC3(retval))
		goto out;

	expire = timeout ? FUNC2(timeout) : MAX_SCHEDULE_TIMEOUT;
	if (!FUNC9(&ctx.done, expire)) {
		FUNC6(urb);
		retval = (ctx.status == -ENOENT ? -ETIMEDOUT : ctx.status);

		FUNC0(&urb->dev->dev,
			"%s timed out on ep%d%s len=%u/%u\n",
			current->comm,
			FUNC4(&urb->ep->desc),
			FUNC8(urb) ? "in" : "out",
			urb->actual_length,
			urb->transfer_buffer_length);
	} else
		retval = ctx.status;
out:
	if (actual_length)
		*actual_length = urb->actual_length;

	FUNC5(urb);
	return retval;
}