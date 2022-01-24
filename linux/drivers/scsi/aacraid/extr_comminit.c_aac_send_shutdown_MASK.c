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
struct fib {int dummy; } ;
struct aac_dev {int adapter_shutdown; scalar_t__ msi_enabled; int /*<<< orphan*/  ioctl_mutex; } ;
struct aac_close {void* cid; void* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  ContainerCommand ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 int VM_CloseAll ; 
 scalar_t__ FUNC0 (struct aac_dev*) ; 
 struct fib* FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int /*<<< orphan*/  FUNC4 (struct fib*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_dev*) ; 
 void* FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct fib*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct aac_dev * dev)
{
	struct fib * fibctx;
	struct aac_close *cmd;
	int status = 0;

	if (FUNC0(dev))
		return status;

	if (!dev->adapter_shutdown) {
		FUNC11(&dev->ioctl_mutex);
		dev->adapter_shutdown = 1;
		FUNC12(&dev->ioctl_mutex);
	}

	FUNC8(dev);

	fibctx = FUNC1(dev);
	if (!fibctx)
		return -ENOMEM;
	FUNC4(fibctx);

	cmd = (struct aac_close *) FUNC10(fibctx);
	cmd->command = FUNC9(VM_CloseAll);
	cmd->cid = FUNC9(0xfffffffe);

	status = FUNC5(ContainerCommand,
			  fibctx,
			  sizeof(struct aac_close),
			  FsaNormal,
			  -2 /* Timeout silently */, 1,
			  NULL, NULL);

	if (status >= 0)
		FUNC2(fibctx);
	/* FIB should be freed only after getting the response from the F/W */
	if (status != -ERESTARTSYS)
		FUNC3(fibctx);
	if (FUNC6(dev) &&
	     dev->msi_enabled)
		FUNC7(dev);
	return status;
}