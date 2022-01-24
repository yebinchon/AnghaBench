#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tty_port {int dummy; } ;
struct gsm_mux {TYPE_1__** dlci; } ;
struct TYPE_2__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RLS ; 
 unsigned int NUM_DLCI ; 
 int /*<<< orphan*/  TTY_FRAME ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  TTY_PARITY ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_mux*,int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ FUNC1 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gsm_mux *gsm, const u8 *data, int clen)
{
	struct tty_port *port;
	unsigned int addr = 0;
	u8 bits;
	int len = clen;
	const u8 *dp = data;

	while (FUNC1(&addr, *dp++) == 0) {
		len--;
		if (len == 0)
			return;
	}
	/* Must be at least one byte following ea */
	len--;
	if (len <= 0)
		return;
	addr >>= 1;
	/* Closed port, or invalid ? */
	if (addr == 0 || addr >= NUM_DLCI || gsm->dlci[addr] == NULL)
		return;
	/* No error ? */
	bits = *dp;
	if ((bits & 1) == 0)
		return;

	port = &gsm->dlci[addr]->port;

	if (bits & 2)
		FUNC3(port, 0, TTY_OVERRUN);
	if (bits & 4)
		FUNC3(port, 0, TTY_PARITY);
	if (bits & 8)
		FUNC3(port, 0, TTY_FRAME);

	FUNC2(port);

	FUNC0(gsm, CMD_RLS, data, clen);
}