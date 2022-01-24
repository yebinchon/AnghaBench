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
struct comedi_8254 {int dummy; } ;

/* Variables and functions */
 struct comedi_8254* FUNC0 (unsigned long,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int) ; 

struct comedi_8254 *FUNC1(unsigned long iobase,
				     unsigned int osc_base,
				     unsigned int iosize,
				     unsigned int regshift)
{
	return FUNC0(iobase, NULL, osc_base, iosize, regshift);
}