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
struct pcmcia_driver {int dummy; } ;
struct comedi_driver {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_driver*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_driver*) ; 
 int FUNC2 (struct pcmcia_driver*) ; 

int FUNC3(struct comedi_driver *comedi_driver,
				  struct pcmcia_driver *pcmcia_driver)
{
	int ret;

	ret = FUNC0(comedi_driver);
	if (ret < 0)
		return ret;

	ret = FUNC2(pcmcia_driver);
	if (ret < 0) {
		FUNC1(comedi_driver);
		return ret;
	}

	return 0;
}