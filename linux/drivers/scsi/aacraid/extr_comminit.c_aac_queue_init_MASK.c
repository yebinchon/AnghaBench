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
struct TYPE_2__ {void** consumer; void** producer; } ;
struct aac_queue {int entries; TYPE_1__ headers; int /*<<< orphan*/  lockdata; int /*<<< orphan*/ * lock; int /*<<< orphan*/  qfull; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  cmdready; struct aac_dev* dev; int /*<<< orphan*/  numpending; } ;
struct aac_dev {int dummy; } ;
typedef  void* __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct aac_dev * dev, struct aac_queue * q, u32 *mem, int qsize)
{
	FUNC1(&q->numpending, 0);
	q->dev = dev;
	FUNC3(&q->cmdready);
	FUNC0(&q->cmdq);
	FUNC3(&q->qfull);
	FUNC4(&q->lockdata);
	q->lock = &q->lockdata;
	q->headers.producer = (__le32 *)mem;
	q->headers.consumer = (__le32 *)(mem+1);
	*(q->headers.producer) = FUNC2(qsize);
	*(q->headers.consumer) = FUNC2(qsize);
	q->entries = qsize;
}