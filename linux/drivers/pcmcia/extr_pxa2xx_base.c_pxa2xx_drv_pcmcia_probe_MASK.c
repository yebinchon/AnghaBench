#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct soc_pcmcia_socket {struct clk* clk; scalar_t__ nr; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct TYPE_7__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcmcia_low_level {int nr; scalar_t__ first; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct skt_dev_info*) ; 
 struct clk* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct skt_dev_info* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct pcmcia_low_level*) ; 
 int FUNC8 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct pcmcia_low_level*) ; 
 int /*<<< orphan*/  FUNC10 (struct soc_pcmcia_socket*,struct pcmcia_low_level*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct soc_pcmcia_socket*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *dev)
{
	int i, ret = 0;
	struct pcmcia_low_level *ops;
	struct skt_dev_info *sinfo;
	struct soc_pcmcia_socket *skt;
	struct clk *clk;

	ops = (struct pcmcia_low_level *)dev->dev.platform_data;
	if (!ops) {
		ret = -ENODEV;
		goto err0;
	}

	if (FUNC2() && ops->nr > 1) {
		FUNC3(&dev->dev, "pxa320 supports only one pcmcia slot");
		ret = -EINVAL;
		goto err0;
	}

	clk = FUNC5(&dev->dev, NULL);
	if (FUNC0(clk))
		return -ENODEV;

	FUNC9(ops);

	sinfo = FUNC6(&dev->dev, FUNC1(ops->nr),
			     GFP_KERNEL);
	if (!sinfo)
		return -ENOMEM;

	sinfo->nskt = ops->nr;

	/* Initialize processor specific parameters */
	for (i = 0; i < ops->nr; i++) {
		skt = &sinfo->skt[i];

		skt->nr = ops->first + i;
		skt->clk = clk;
		FUNC10(skt, ops, &dev->dev);

		ret = FUNC8(skt);
		if (ret)
			goto err1;
	}

	FUNC7(&dev->dev, ops);
	FUNC4(&dev->dev, sinfo);

	return 0;

err1:
	while (--i >= 0)
		FUNC11(&sinfo->skt[i]);

err0:
	return ret;
}