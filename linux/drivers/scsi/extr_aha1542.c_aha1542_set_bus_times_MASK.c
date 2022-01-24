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
typedef  int u8 ;
struct Scsi_Host {int /*<<< orphan*/  io_port; } ;

/* Variables and functions */
 int CMD_BUSOFF_TIME ; 
 int CMD_BUSON_TIME ; 
 int CMD_DMASPEED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 

__attribute__((used)) static void FUNC5(struct Scsi_Host *sh, int bus_on, int bus_off, int dma_speed)
{
	if (bus_on > 0) {
		u8 oncmd[] = { CMD_BUSON_TIME, FUNC2(bus_on, 2, 15) };

		FUNC0(sh->io_port);
		if (FUNC1(sh->io_port, oncmd, 2))
			goto fail;
	}

	if (bus_off > 0) {
		u8 offcmd[] = { CMD_BUSOFF_TIME, FUNC2(bus_off, 1, 64) };

		FUNC0(sh->io_port);
		if (FUNC1(sh->io_port, offcmd, 2))
			goto fail;
	}

	if (FUNC3(dma_speed) != 0xff) {
		u8 dmacmd[] = { CMD_DMASPEED, FUNC3(dma_speed) };

		FUNC0(sh->io_port);
		if (FUNC1(sh->io_port, dmacmd, 2))
			goto fail;
	}
	FUNC0(sh->io_port);
	return;
fail:
	FUNC4(KERN_ERR, sh, "setting bus on/off-time failed\n");
	FUNC0(sh->io_port);
}