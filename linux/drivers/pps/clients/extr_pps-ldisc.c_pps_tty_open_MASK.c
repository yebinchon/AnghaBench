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
struct tty_struct {int index; struct tty_driver* driver; } ;
struct tty_driver {int name_base; char* driver_name; char* name; } ;
struct pps_source_info {int mode; int /*<<< orphan*/  path; int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; int /*<<< orphan*/  owner; } ;
struct pps_device {int /*<<< orphan*/  dev; struct tty_struct* lookup_cookie; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pps_device*) ; 
 int PPS_CANWAIT ; 
 int PPS_CAPTUREBOTH ; 
 int /*<<< orphan*/  PPS_MAX_NAME_LEN ; 
 int PPS_OFFSETASSERT ; 
 int PPS_OFFSETCLEAR ; 
 int PPS_TSFMT_TSPEC ; 
 int FUNC1 (struct pps_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct pps_device* FUNC4 (struct pps_source_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pps_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty)
{
	struct pps_source_info info;
	struct tty_driver *drv = tty->driver;
	int index = tty->index + drv->name_base;
	struct pps_device *pps;
	int ret;

	info.owner = THIS_MODULE;
	info.dev = NULL;
	FUNC7(info.name, PPS_MAX_NAME_LEN, "%s%d", drv->driver_name, index);
	FUNC7(info.path, PPS_MAX_NAME_LEN, "/dev/%s%d", drv->name, index);
	info.mode = PPS_CAPTUREBOTH | \
			PPS_OFFSETASSERT | PPS_OFFSETCLEAR | \
			PPS_CANWAIT | PPS_TSFMT_TSPEC;

	pps = FUNC4(&info, PPS_CAPTUREBOTH | \
				PPS_OFFSETASSERT | PPS_OFFSETCLEAR);
	if (FUNC0(pps)) {
		FUNC6("cannot register PPS source \"%s\"\n", info.path);
		return FUNC1(pps);
	}
	pps->lookup_cookie = tty;

	/* Now open the base class N_TTY ldisc */
	ret = FUNC2(tty);
	if (ret < 0) {
		FUNC6("cannot open tty ldisc \"%s\"\n", info.path);
		goto err_unregister;
	}

	FUNC3(pps->dev, "source \"%s\" added\n", info.path);

	return 0;

err_unregister:
	FUNC5(pps);
	return ret;
}