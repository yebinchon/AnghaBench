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
typedef  int /*<<< orphan*/  u8 ;
struct fnic {int /*<<< orphan*/  fnic_lock; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fnic*,int /*<<< orphan*/ *) ; 
 struct fnic* FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fc_lport *lport, u8 *new)
{
	struct fnic *fnic = FUNC1(lport);

	FUNC2(&fnic->fnic_lock);
	FUNC0(fnic, new);
	FUNC3(&fnic->fnic_lock);
}