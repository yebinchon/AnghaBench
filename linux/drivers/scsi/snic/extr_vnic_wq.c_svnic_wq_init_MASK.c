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
struct vnic_wq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnic_wq*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

void FUNC1(struct vnic_wq *wq, unsigned int cq_index,
	unsigned int error_interrupt_enable,
	unsigned int error_interrupt_offset)
{
	FUNC0(wq, cq_index, 0, 0, error_interrupt_enable,
			   error_interrupt_offset);
}