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
typedef  int /*<<< orphan*/  u8 ;
struct tty_struct {int dummy; } ;
struct gsm_mux {struct gsm_dlci** dlci; } ;
struct gsm_dlci {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MSC ; 
 unsigned int NUM_DLCI ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_mux*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct gsm_dlci*,unsigned int,int) ; 
 scalar_t__ FUNC2 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct tty_struct* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct gsm_mux *gsm, const u8 *data, int clen)
{
	unsigned int addr = 0;
	unsigned int modem = 0;
	unsigned int brk = 0;
	struct gsm_dlci *dlci;
	int len = clen;
	const u8 *dp = data;
	struct tty_struct *tty;

	while (FUNC2(&addr, *dp++) == 0) {
		len--;
		if (len == 0)
			return;
	}
	/* Must be at least one byte following the EA */
	len--;
	if (len <= 0)
		return;

	addr >>= 1;
	/* Closed port, or invalid ? */
	if (addr == 0 || addr >= NUM_DLCI || gsm->dlci[addr] == NULL)
		return;
	dlci = gsm->dlci[addr];

	while (FUNC2(&modem, *dp++) == 0) {
		len--;
		if (len == 0)
			return;
	}
	len--;
	if (len > 0) {
		while (FUNC2(&brk, *dp++) == 0) {
			len--;
			if (len == 0)
				return;
		}
		modem <<= 7;
		modem |= (brk & 0x7f);
	}
	tty = FUNC4(&dlci->port);
	FUNC1(tty, dlci, modem, clen);
	if (tty) {
		FUNC5(tty);
		FUNC3(tty);
	}
	FUNC0(gsm, CMD_MSC, data, clen);
}