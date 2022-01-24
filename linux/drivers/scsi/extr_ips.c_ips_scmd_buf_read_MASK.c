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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,void*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct scsi_cmnd *scmd, void *data, unsigned int count)
{
	unsigned long flags;

	FUNC1(flags);
	FUNC2(scmd, data, count);
	FUNC0(flags);
}