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
 int SDEBUG_OPT_MAC_TIMEOUT ; 
 int SDEBUG_OPT_TIMEOUT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  sdebug_cmnd_count ; 
 int sdebug_every_nth ; 
 int sdebug_opts ; 

__attribute__((used)) static bool FUNC3(struct scsi_cmnd *scp)
{
	if (0 == (FUNC1(&sdebug_cmnd_count) % FUNC0(sdebug_every_nth))) {
		if (sdebug_every_nth < -1)
			sdebug_every_nth = -1;
		if (SDEBUG_OPT_TIMEOUT & sdebug_opts)
			return true; /* ignore command causing timeout */
		else if (SDEBUG_OPT_MAC_TIMEOUT & sdebug_opts &&
			 FUNC2(scp))
			return true; /* time out reads and writes */
	}
	return false;
}