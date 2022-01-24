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
struct tty_struct {int /*<<< orphan*/  name; struct cyclades_port* driver_data; } ;
struct cyclades_port {char x_char; int line; struct cyclades_card* card; } ;
struct cyclades_card {int first_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_CM_SENDXOFF ; 
 int /*<<< orphan*/  C_CM_SENDXON ; 
 char FUNC0 (struct tty_struct*) ; 
 char FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct cyclades_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct cyclades_card*,int,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC5 (struct cyclades_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, char ch)
{
	struct cyclades_port *info = tty->driver_data;
	struct cyclades_card *card;
	int channel;

	if (FUNC5(info, tty->name, "cy_send_xchar"))
		return;

	info->x_char = ch;

	if (ch)
		FUNC3(tty);

	card = info->card;
	channel = info->line - card->first_line;

	if (FUNC2(card)) {
		if (ch == FUNC1(tty))
			FUNC4(card, channel, C_CM_SENDXOFF, 0L);
		else if (ch == FUNC0(tty))
			FUNC4(card, channel, C_CM_SENDXON, 0L);
	}
}