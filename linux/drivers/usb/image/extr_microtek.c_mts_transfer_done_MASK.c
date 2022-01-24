#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int dummy; } ;
struct TYPE_4__ {scalar_t__* scsi_status; TYPE_1__* srb; } ;
struct TYPE_3__ {unsigned int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int MTS_SCSI_ERR_MASK ; 
 TYPE_2__* context ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 

__attribute__((used)) static void FUNC2( struct urb *transfer )
{
	FUNC0();

	context->srb->result &= MTS_SCSI_ERR_MASK;
	context->srb->result |= (unsigned)(*context->scsi_status)<<1;

	FUNC1(transfer);
}