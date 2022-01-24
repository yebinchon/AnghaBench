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
struct ni_private {int /*<<< orphan*/ * pfi_output_select_reg; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct comedi_device *dev,
						unsigned int chan)
{
	struct ni_private *devpriv = dev->private;
	const unsigned int array_offset = chan / 3;

	return FUNC0(chan,
				devpriv->pfi_output_select_reg[array_offset]);
}