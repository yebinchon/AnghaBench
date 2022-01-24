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
typedef  void virtqueue ;
struct airq_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  aiv; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct virtqueue *vq, struct airq_info *info)
{
	unsigned long i, flags;

	FUNC4(&info->lock, flags);
	for (i = 0; i < FUNC0(info->aiv); i++) {
		if (vq == (void *)FUNC2(info->aiv, i)) {
			FUNC1(info->aiv, i);
			FUNC3(info->aiv, i, 0);
			break;
		}
	}
	FUNC5(&info->lock, flags);
}