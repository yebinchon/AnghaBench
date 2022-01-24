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
typedef  int /*<<< orphan*/  u8 ;
struct olpc_ec_priv {int suspended; } ;
struct ec_cmd_desc {size_t inlen; size_t outlen; int err; int /*<<< orphan*/  finished; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/ * inbuf; int /*<<< orphan*/  cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  ec_cmd; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* ec_driver ; 
 struct olpc_ec_priv* ec_priv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ec_cmd_desc*,struct olpc_ec_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(u8 cmd, u8 *inbuf, size_t inlen, u8 *outbuf, size_t outlen)
{
	struct olpc_ec_priv *ec = ec_priv;
	struct ec_cmd_desc desc;

	/* Driver not yet registered. */
	if (!ec_driver)
		return -EPROBE_DEFER;

	if (FUNC0(!ec_driver->ec_cmd))
		return -ENODEV;

	if (!ec)
		return -ENOMEM;

	/* Suspending in the middle of a command hoses things really badly */
	if (FUNC0(ec->suspended))
		return -EBUSY;

	FUNC2();

	desc.cmd = cmd;
	desc.inbuf = inbuf;
	desc.outbuf = outbuf;
	desc.inlen = inlen;
	desc.outlen = outlen;
	desc.err = 0;
	FUNC1(&desc.finished);

	FUNC3(&desc, ec);

	/* Timeouts must be handled in the platform-specific EC hook */
	FUNC4(&desc.finished);

	/* The worker thread dequeues the cmd; no need to do anything here */
	return desc.err;
}