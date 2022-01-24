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
struct virtio_input {int /*<<< orphan*/  lock; int /*<<< orphan*/  evt; int /*<<< orphan*/ * evts; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_input*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct virtio_input *vi)
{
	unsigned long flags;
	int i, size;

	FUNC1(&vi->lock, flags);
	size = FUNC4(vi->evt);
	if (size > FUNC0(vi->evts))
		size = FUNC0(vi->evts);
	for (i = 0; i < size; i++)
		FUNC3(vi, &vi->evts[i]);
	FUNC5(vi->evt);
	FUNC2(&vi->lock, flags);
}