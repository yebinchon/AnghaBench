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
struct fdomain {int /*<<< orphan*/  work; } ;
struct Scsi_Host {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct fdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct fdomain* FUNC4 (struct Scsi_Host*) ; 

int FUNC5(struct Scsi_Host *sh)
{
	struct fdomain *fd = FUNC4(sh);

	FUNC0(&fd->work);
	FUNC3(sh);
	if (sh->irq)
		FUNC1(sh->irq, fd);
	FUNC2(sh);
	return 0;
}