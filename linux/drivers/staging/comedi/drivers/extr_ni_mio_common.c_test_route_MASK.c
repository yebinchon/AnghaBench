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
struct ni_private {int /*<<< orphan*/  routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,struct comedi_device*) ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned int src, unsigned int dest,
		      struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	s8 reg = FUNC2(FUNC0(src), dest,
				      &devpriv->routing_tables);

	if (reg < 0)
		return -1;
	if (FUNC1(dest, dev) != FUNC0(src))
		return 0;
	return 1;
}