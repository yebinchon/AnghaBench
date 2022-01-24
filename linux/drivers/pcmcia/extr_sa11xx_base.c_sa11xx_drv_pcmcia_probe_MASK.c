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
struct soc_pcmcia_socket {int nr; struct clk* clk; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct pcmcia_low_level {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct skt_dev_info*) ; 
 struct clk* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 struct skt_dev_info* FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_low_level*) ; 
 int /*<<< orphan*/  FUNC8 (struct soc_pcmcia_socket*,struct pcmcia_low_level*,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct soc_pcmcia_socket*) ; 

int FUNC10(struct device *dev, struct pcmcia_low_level *ops,
			    int first, int nr)
{
	struct skt_dev_info *sinfo;
	struct soc_pcmcia_socket *skt;
	int i, ret = 0;
	struct clk *clk;

	clk = FUNC4(dev, NULL);
	if (FUNC0(clk))
		return FUNC1(clk);

	FUNC7(ops);

	sinfo = FUNC5(dev, FUNC2(nr), GFP_KERNEL);
	if (!sinfo)
		return -ENOMEM;

	sinfo->nskt = nr;

	/* Initialize processor specific parameters */
	for (i = 0; i < nr; i++) {
		skt = &sinfo->skt[i];

		skt->nr = first + i;
		skt->clk = clk;
		FUNC8(skt, ops, dev);

		ret = FUNC6(skt);
		if (ret)
			break;
	}

	if (ret) {
		while (--i >= 0)
			FUNC9(&sinfo->skt[i]);
	} else {
		FUNC3(dev, sinfo);
	}

	return ret;
}