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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct bcm63xx_pcmcia_socket {struct resource* reg_res; int /*<<< orphan*/  io_base; int /*<<< orphan*/  base; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_pcmcia_socket*) ; 
 struct bcm63xx_pcmcia_socket* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct bcm63xx_pcmcia_socket *skt;
	struct resource *res;

	skt = FUNC3(pdev);
	FUNC0(&skt->timer);
	FUNC1(skt->base);
	FUNC1(skt->io_base);
	res = skt->reg_res;
	FUNC4(res->start, FUNC5(res));
	FUNC2(skt);
	return 0;
}