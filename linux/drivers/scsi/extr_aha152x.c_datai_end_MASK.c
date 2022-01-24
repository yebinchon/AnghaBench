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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int CH1 ; 
 int CLRSTCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURRENT_SC ; 
 int /*<<< orphan*/  DMACNTRL0 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SXFRCTL0 ; 

__attribute__((used)) static void FUNC3(struct Scsi_Host *shpnt)
{
	FUNC0(CURRENT_SC, -FUNC1());

	FUNC2(SXFRCTL0, CH1|CLRSTCNT);
	FUNC2(DMACNTRL0, 0);
}