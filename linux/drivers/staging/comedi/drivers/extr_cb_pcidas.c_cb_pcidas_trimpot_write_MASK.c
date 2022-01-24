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
struct comedi_device {struct cb_pcidas_board* board_ptr; } ;
struct cb_pcidas_board {scalar_t__ has_ad8402; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev,
				    unsigned int chan, unsigned int val)
{
	const struct cb_pcidas_board *board = dev->board_ptr;

	if (board->has_ad8402) {
		/* write 10-bit channel/value to AD8402 trimpot */
		FUNC0(dev, (chan << 8) | val, 10, true);
	} else {
		/* write 7-bit value to AD7376 trimpot */
		FUNC0(dev, val, 7, true);
	}
}