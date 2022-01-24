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
struct maple_device {struct maple_device* mq; int /*<<< orphan*/  recvbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct maple_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maple_queue_cache ; 

__attribute__((used)) static void FUNC2(struct maple_device *mdev)
{
	FUNC1(maple_queue_cache, mdev->mq->recvbuf);
	FUNC0(mdev->mq);
	FUNC0(mdev);
}