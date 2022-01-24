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
struct pcmcia_device {struct ipw_dev* priv; } ;
struct ipw_dev {int /*<<< orphan*/  hardware; struct pcmcia_device* link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ipw_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_dev*) ; 
 struct ipw_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
	struct ipw_dev *ipw;
	int ret;

	ipw = FUNC4(sizeof(struct ipw_dev), GFP_KERNEL);
	if (!ipw)
		return -ENOMEM;

	ipw->link = link;
	link->priv = ipw;

	ipw->hardware = FUNC2();
	if (!ipw->hardware) {
		FUNC3(ipw);
		return -ENOMEM;
	}
	/* RegisterClient will call config_ipwireless */

	ret = FUNC0(ipw);

	if (ret != 0) {
		FUNC1(link);
		return ret;
	}

	return 0;
}