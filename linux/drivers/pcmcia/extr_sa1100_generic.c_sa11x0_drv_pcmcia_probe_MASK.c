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
struct soc_pcmcia_socket {int nr; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;
struct platform_device {int id; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 struct soc_pcmcia_socket* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  sa11x0_cf_ops ; 
 int FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct soc_pcmcia_socket*,int /*<<< orphan*/ *,struct device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct soc_pcmcia_socket *skt;
	struct device *dev = &pdev->dev;

	if (pdev->id == -1)
		return FUNC5(pdev);

	skt = FUNC3(dev, sizeof(*skt), GFP_KERNEL);
	if (!skt)
		return -ENOMEM;

	FUNC4(pdev, skt);

	skt->nr = pdev->id;
	skt->clk = FUNC2(dev, NULL);
	if (FUNC0(skt->clk))
		return FUNC1(skt->clk);

	FUNC7(&sa11x0_cf_ops);
	FUNC8(skt, &sa11x0_cf_ops, dev);

	return FUNC6(skt);
}