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

/* Variables and functions */
 scalar_t__ DT2801_STATUS ; 
 int DT2801_TIMEOUT ; 
 int DT_S_COMPOSITE_ERROR ; 
 int DT_S_READY ; 
 int ETIME ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev)
{
	int timeout = DT2801_TIMEOUT;
	int stat;

	stat = FUNC0(dev->iobase + DT2801_STATUS);
	if (stat & DT_S_READY)
		return 0;
	do {
		stat = FUNC0(dev->iobase + DT2801_STATUS);

		if (stat & DT_S_COMPOSITE_ERROR)
			return stat;
		if (stat & DT_S_READY)
			return 0;
	} while (--timeout > 0);

	return -ETIME;
}