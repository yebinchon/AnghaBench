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
struct tty_port {int dummy; } ;
struct gsm_dlci {int adaption; struct tty_port port; } ;

/* Variables and functions */
 int debug ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,struct gsm_dlci*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 struct tty_struct* FUNC6 (struct tty_port*) ; 

__attribute__((used)) static void FUNC7(struct gsm_dlci *dlci, const u8 *data, int clen)
{
	/* krefs .. */
	struct tty_port *port = &dlci->port;
	struct tty_struct *tty;
	unsigned int modem = 0;
	int len = clen;

	if (debug & 16)
		FUNC2("%d bytes for tty\n", len);
	switch (dlci->adaption)  {
	/* Unsupported types */
	case 4:		/* Packetised interruptible data */
		break;
	case 3:		/* Packetised uininterruptible voice/data */
		break;
	case 2:		/* Asynchronous serial with line state in each frame */
		while (FUNC1(&modem, *data++) == 0) {
			len--;
			if (len == 0)
				return;
		}
		tty = FUNC6(port);
		if (tty) {
			FUNC0(tty, dlci, modem, clen);
			FUNC5(tty);
		}
		/* Fall through */
	case 1:		/* Line state will go via DLCI 0 controls only */
	default:
		FUNC4(port, data, len);
		FUNC3(port);
	}
}