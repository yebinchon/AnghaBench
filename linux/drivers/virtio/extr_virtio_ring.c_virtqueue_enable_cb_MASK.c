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
struct virtqueue {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*,unsigned int) ; 

bool FUNC2(struct virtqueue *_vq)
{
	unsigned last_used_idx = FUNC0(_vq);

	return !FUNC1(_vq, last_used_idx);
}