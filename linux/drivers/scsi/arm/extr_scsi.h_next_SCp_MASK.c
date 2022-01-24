#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_pointer {int buffers_residual; scalar_t__ this_residual; int /*<<< orphan*/ * ptr; TYPE_1__* buffer; } ;
struct TYPE_4__ {scalar_t__ length; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline int FUNC2(struct scsi_pointer *SCp)
{
	int ret = SCp->buffers_residual;
	if (ret) {
		SCp->buffer = FUNC0(SCp->buffer);
		SCp->buffers_residual--;
		SCp->ptr = FUNC1(SCp->buffer);
		SCp->this_residual = SCp->buffer->length;
	} else {
		SCp->ptr = NULL;
		SCp->this_residual = 0;
	}
	return ret;
}