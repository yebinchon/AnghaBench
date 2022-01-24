#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct TYPE_6__ {TYPE_1__* adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 TYPE_2__* ICOM_PORT ; 
 int /*<<< orphan*/  icom_kref_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	int retval;

	FUNC0(&ICOM_PORT->adapter->kref);
	retval = FUNC2(ICOM_PORT);

	if (retval) {
		FUNC1(&ICOM_PORT->adapter->kref, icom_kref_release);
		FUNC3(ICOM_PORT, "STARTUP_ERROR", 0);
		return retval;
	}

	return 0;
}