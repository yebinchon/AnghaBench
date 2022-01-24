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
struct visor_vbus_deviceinfo {int /*<<< orphan*/  infostrs; int /*<<< orphan*/  drvname; int /*<<< orphan*/ * devtype; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct visor_vbus_deviceinfo *devinfo,
				      struct seq_file *seq, int devix)
{
	/* uninitialized vbus device entry */
	if (!FUNC0(devinfo->devtype[0]))
		return;
	if (devix >= 0)
		FUNC1(seq, "[%d]", devix);
	else
		/* vbus device entry is for bus or chipset */
		FUNC2(seq, "   ");
	/*
	 * Note: because the s-Par back-end is free to scribble in this area,
	 * we never assume '\0'-termination.
	 */
	FUNC1(seq, "%-*.*s ", (int)sizeof(devinfo->devtype),
		   (int)sizeof(devinfo->devtype), devinfo->devtype);
	FUNC1(seq, "%-*.*s ", (int)sizeof(devinfo->drvname),
		   (int)sizeof(devinfo->drvname), devinfo->drvname);
	FUNC1(seq, "%.*s\n", (int)sizeof(devinfo->infostrs),
		   devinfo->infostrs);
}