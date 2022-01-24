#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_driver {int dummy; } ;
struct console {struct console* next; struct tty_driver* (* device ) (struct console*,int*) ;} ;
struct TYPE_4__ {int is_console; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* config ; 
 int configured ; 
 struct console* console_drivers ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 () ; 
 struct tty_driver* kgdb_tty_driver ; 
 int kgdb_tty_line ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__ kgdboc_io_ops ; 
 scalar_t__ FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int kgdboc_use_kms ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 struct tty_driver* FUNC9 (struct console*,int*) ; 
 struct tty_driver* FUNC10 (char*,int*) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct tty_driver *p;
	int tty_line = 0;
	int err = -ENODEV;
	char *cptr = config;
	struct console *cons;

	if (!FUNC7(config) || FUNC1(config[0])) {
		err = 0;
		goto noconfig;
	}

	kgdboc_io_ops.is_console = 0;
	kgdb_tty_driver = NULL;

	kgdboc_use_kms = 0;
	if (FUNC8(cptr, "kms,", 4) == 0) {
		cptr += 4;
		kgdboc_use_kms = 1;
	}

	if (FUNC5(&cptr))
		goto do_register;

	p = FUNC10(cptr, &tty_line);
	if (!p)
		goto noconfig;

	cons = console_drivers;
	while (cons) {
		int idx;
		if (cons->device && cons->device(cons, &idx) == p &&
		    idx == tty_line) {
			kgdboc_io_ops.is_console = 1;
			break;
		}
		cons = cons->next;
	}

	kgdb_tty_driver = p;
	kgdb_tty_line = tty_line;

do_register:
	err = FUNC2(&kgdboc_io_ops);
	if (err)
		goto noconfig;

	err = FUNC3();
	if (err)
		goto nmi_con_failed;

	configured = 1;

	return 0;

nmi_con_failed:
	FUNC4(&kgdboc_io_ops);
noconfig:
	FUNC6();
	config[0] = 0;
	configured = 0;
	FUNC0();

	return err;
}