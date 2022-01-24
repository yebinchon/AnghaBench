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
struct comedi_device {scalar_t__ iobase; } ;
struct a2150_board {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct a2150_board const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_REG ; 
 struct a2150_board const* a2150_boards ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static const struct a2150_board *FUNC3(struct comedi_device *dev)
{
	int id = FUNC1(FUNC2(dev->iobase + STATUS_REG));

	if (id >= FUNC0(a2150_boards))
		return NULL;

	return &a2150_boards[id];
}