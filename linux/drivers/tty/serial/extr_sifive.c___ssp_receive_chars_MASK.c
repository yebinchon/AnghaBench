#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rx; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__* state; TYPE_2__ icount; } ;
struct sifive_serial_port {TYPE_3__ port; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int SIFIVE_RX_FIFO_DEPTH ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 unsigned char FUNC0 (struct sifive_serial_port*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sifive_serial_port *ssp)
{
	unsigned char ch;
	char is_empty;
	int c;

	for (c = SIFIVE_RX_FIFO_DEPTH; c > 0; --c) {
		ch = FUNC0(ssp, &is_empty);
		if (is_empty)
			break;

		ssp->port.icount.rx++;
		FUNC4(&ssp->port, 0, 0, ch, TTY_NORMAL);
	}

	FUNC2(&ssp->port.lock);
	FUNC3(&ssp->port.state->port);
	FUNC1(&ssp->port.lock);
}