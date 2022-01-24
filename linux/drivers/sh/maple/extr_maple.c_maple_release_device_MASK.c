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
struct mapleq {int /*<<< orphan*/  recvbuf; struct mapleq* mq; } ;
struct maple_device {int /*<<< orphan*/  recvbuf; struct maple_device* mq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mapleq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maple_queue_cache ; 
 struct mapleq* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct maple_device *mdev;
	struct mapleq *mq;

	mdev = FUNC2(dev);
	mq = mdev->mq;
	FUNC1(maple_queue_cache, mq->recvbuf);
	FUNC0(mq);
	FUNC0(mdev);
}