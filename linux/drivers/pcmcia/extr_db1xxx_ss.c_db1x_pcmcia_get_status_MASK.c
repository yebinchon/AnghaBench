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
struct pcmcia_socket {int dummy; } ;
struct db1x_pcmcia_sock {scalar_t__ board_type; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCSR_PCMCIA ; 
 int /*<<< orphan*/  BCSR_STATUS ; 
 scalar_t__ BOARD_TYPE_DB1300 ; 
 scalar_t__ BOARD_TYPE_PB1100 ; 
 scalar_t__ FUNC0 (unsigned short,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 
 unsigned int SS_3VCARD ; 
 unsigned int SS_DETECT ; 
 unsigned int SS_POWERON ; 
 unsigned int SS_READY ; 
 unsigned int SS_RESET ; 
 unsigned int SS_XVCARD ; 
 unsigned short FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct db1x_pcmcia_sock*) ; 
 struct db1x_pcmcia_sock* FUNC5 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_socket *skt,
				  unsigned int *value)
{
	struct db1x_pcmcia_sock *sock = FUNC5(skt);
	unsigned short cr, sr;
	unsigned int status;

	status = FUNC4(sock) ? SS_DETECT : 0;

	cr = FUNC3(BCSR_PCMCIA);
	sr = FUNC3(BCSR_STATUS);

	/* PB1100/PB1500: voltage key bits are at [5:4] */
	if (sock->board_type == BOARD_TYPE_PB1100)
		sr >>= 4;

	/* determine card type */
	switch (FUNC2(sr, sock->nr)) {
	case 0:
	case 2:
		status |= SS_3VCARD;	/* 3V card */
	case 3:
		break;			/* 5V card: set nothing */
	default:
		status |= SS_XVCARD;	/* treated as unsupported in core */
	}

	/* if Vcc is not zero, we have applied power to a card */
	status |= FUNC1(cr, sock->nr) ? SS_POWERON : 0;

	/* DB1300: power always on, but don't tell when no card present */
	if ((sock->board_type == BOARD_TYPE_DB1300) && (status & SS_DETECT))
		status = SS_POWERON | SS_3VCARD | SS_DETECT;

	/* reset de-asserted? then we're ready */
	status |= (FUNC0(cr, sock->nr)) ? SS_READY : SS_RESET;

	*value = status;

	return 0;
}