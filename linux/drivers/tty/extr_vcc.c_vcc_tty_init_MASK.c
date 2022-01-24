#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  init_termios; int /*<<< orphan*/  type; int /*<<< orphan*/  minor_start; int /*<<< orphan*/  name; int /*<<< orphan*/  driver_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TTY_DRIVER_TYPE_SYSTEM ; 
 int /*<<< orphan*/  VCC_MAX_PORTS ; 
 int /*<<< orphan*/  VCC_MINOR_START ; 
 int /*<<< orphan*/  VCC_TTY_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vcc_device_node ; 
 int /*<<< orphan*/  vcc_driver_name ; 
 int /*<<< orphan*/  vcc_ops ; 
 TYPE_1__* vcc_tty_driver ; 
 int /*<<< orphan*/  vcc_tty_termios ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static int FUNC9(void)
{
	int rv;

	FUNC3("VCC: %s\n", version);

	vcc_tty_driver = FUNC5(VCC_MAX_PORTS, VCC_TTY_FLAGS);
	if (FUNC0(vcc_tty_driver)) {
		FUNC2("VCC: TTY driver alloc failed\n");
		return FUNC1(vcc_tty_driver);
	}

	vcc_tty_driver->driver_name = vcc_driver_name;
	vcc_tty_driver->name = vcc_device_node;

	vcc_tty_driver->minor_start = VCC_MINOR_START;
	vcc_tty_driver->type = TTY_DRIVER_TYPE_SYSTEM;
	vcc_tty_driver->init_termios = vcc_tty_termios;

	FUNC7(vcc_tty_driver, &vcc_ops);

	rv = FUNC6(vcc_tty_driver);
	if (rv) {
		FUNC2("VCC: TTY driver registration failed\n");
		FUNC4(vcc_tty_driver);
		vcc_tty_driver = NULL;
		return rv;
	}

	FUNC8("VCC: TTY driver registered\n");

	return 0;
}