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
typedef  int /*<<< orphan*/  u32 ;
struct maple_device {TYPE_1__* mq; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {size_t length; int /*<<< orphan*/  list; void* sendbuf; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maple_waitq ; 
 int /*<<< orphan*/  maple_wlist_lock ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct maple_device *mdev, u32 function, u32 command,
	size_t length, void *data)
{
	int ret = 0;
	void *sendbuf = NULL;

	if (length) {
		sendbuf = FUNC1(length, 4, GFP_KERNEL);
		if (!sendbuf) {
			ret = -ENOMEM;
			goto out;
		}
		((__be32 *)sendbuf)[0] = FUNC0(function);
	}

	mdev->mq->command = command;
	mdev->mq->length = length;
	if (length > 1)
		FUNC3(sendbuf + 4, data, (length - 1) * 4);
	mdev->mq->sendbuf = sendbuf;

	FUNC4(&maple_wlist_lock);
	FUNC2(&mdev->mq->list, &maple_waitq);
	FUNC5(&maple_wlist_lock);
out:
	return ret;
}