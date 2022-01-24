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
struct pcmcia_device {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct pcmcia_device*,void*) ; 
 struct pcmcia_device* FUNC1 (struct comedi_device*) ; 
 int FUNC2 (struct pcmcia_device*) ; 
 int FUNC3 (struct pcmcia_device*,int (*) (struct pcmcia_device*,void*),int /*<<< orphan*/ *) ; 

int FUNC4(struct comedi_device *dev,
			 int (*conf_check)(struct pcmcia_device *p_dev,
					   void *priv_data))
{
	struct pcmcia_device *link = FUNC1(dev);
	int ret;

	if (!link)
		return -ENODEV;

	if (!conf_check)
		conf_check = comedi_pcmcia_conf_check;

	ret = FUNC3(link, conf_check, NULL);
	if (ret)
		return ret;

	return FUNC2(link);
}