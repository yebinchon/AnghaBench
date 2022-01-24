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
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {unsigned int size; int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  chan; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_isadma_desc *desc)
{
	unsigned int residue = FUNC2(desc->chan);
	unsigned int nbytes = desc->size - residue;
	unsigned int nsamples;

	/*  figure out how many points to read */
	nsamples = FUNC1(s, nbytes);
	nsamples = FUNC3(s, nsamples);

	FUNC0(s, desc->virt_addr, nsamples);
}