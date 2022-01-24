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
 int /*<<< orphan*/  KERN_EMERG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC3(struct Scsi_Host *shpnt, char *msg)
{
	FUNC1(KERN_EMERG, shpnt, "%s\n", msg);
	FUNC2(shpnt);
	FUNC0("aha152x panic\n");
}