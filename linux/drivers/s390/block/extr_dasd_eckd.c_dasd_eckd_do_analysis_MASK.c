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
struct dasd_eckd_private {scalar_t__ init_cqr_status; } ;
struct dasd_block {TYPE_1__* base; } ;
struct TYPE_2__ {struct dasd_eckd_private* private; } ;

/* Variables and functions */
 int FUNC0 (struct dasd_block*) ; 
 int FUNC1 (struct dasd_block*) ; 

__attribute__((used)) static int FUNC2(struct dasd_block *block)
{
	struct dasd_eckd_private *private = block->base->private;

	if (private->init_cqr_status < 0)
		return FUNC1(block);
	else
		return FUNC0(block);
}