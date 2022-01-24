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
 int SDEBUG_OPT_HOST_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdebug_cmnd_count ; 
 int /*<<< orphan*/  sdebug_every_nth ; 
 int sdebug_opts ; 

__attribute__((used)) static bool FUNC2(struct scsi_cmnd *scp)
{
	return (sdebug_opts & SDEBUG_OPT_HOST_BUSY) &&
		(FUNC1(&sdebug_cmnd_count) % FUNC0(sdebug_every_nth)) == 0;
}