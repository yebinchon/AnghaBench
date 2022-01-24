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
struct vnic_wq {int /*<<< orphan*/  ring; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vnic_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static inline int FUNC1(struct vnic_dev *vdev, struct vnic_wq *wq,
	unsigned int index, unsigned int desc_count, unsigned int desc_size)
{
	return FUNC0(vdev, &wq->ring, desc_count,
					 desc_size);
}