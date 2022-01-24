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
struct vnic_intr {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct vnic_intr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_intr*,unsigned int,int,int) ; 

__attribute__((used)) static inline void
FUNC2(struct vnic_intr *intr)
{
	unsigned int credits = FUNC0(intr);
	int unmask = 1;
	int reset_timer = 1;

	FUNC1(intr, credits, unmask, reset_timer);
}