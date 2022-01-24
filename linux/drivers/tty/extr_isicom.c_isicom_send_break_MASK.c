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
struct tty_struct {struct isi_port* driver_data; } ;
struct isi_port {int channel; struct isi_board* card; } ;
struct isi_board {unsigned long base; int shift_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct isi_board*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct isi_board*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, int length)
{
	struct isi_port *port = tty->driver_data;
	struct isi_board *card = port->card;
	unsigned long base = card->base;

	if (length == -1)
		return -EOPNOTSUPP;

	if (!FUNC1(card))
		return -EINVAL;

	FUNC2(0x8000 | ((port->channel) << (card->shift_count)) | 0x3, base);
	FUNC2((length & 0xff) << 8 | 0x00, base);
	FUNC2((length & 0xff00u), base);
	FUNC0(base);

	FUNC3(card);
	return 0;
}