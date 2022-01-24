#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* reg; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct soc_pcmcia_socket {TYPE_4__* stat; TYPE_3__ vcc; void* gpio_bus_enable; void* gpio_reset; TYPE_2__ socket; } ;
struct device {int dummy; } ;
struct TYPE_8__ {char* name; void* desc; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,char*) ; 
 char** sa11x0_cf_gpio_names ; 

__attribute__((used)) static int FUNC7(struct soc_pcmcia_socket *skt)
{
	struct device *dev = skt->socket.dev.parent;
	int i;

	skt->gpio_reset = FUNC4(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(skt->gpio_reset))
		return FUNC2(skt->gpio_reset);

	skt->gpio_bus_enable = FUNC5(dev, "bus-enable",
						       GPIOD_OUT_HIGH);
	if (FUNC1(skt->gpio_bus_enable))
		return FUNC2(skt->gpio_bus_enable);

	skt->vcc.reg = FUNC6(dev, "vcc");
	if (FUNC1(skt->vcc.reg))
		return FUNC2(skt->vcc.reg);

	if (!skt->vcc.reg)
		FUNC3(dev,
			 "no Vcc regulator provided, ignoring Vcc controls\n");

	for (i = 0; i < FUNC0(sa11x0_cf_gpio_names); i++) {
		skt->stat[i].name = sa11x0_cf_gpio_names[i];
		skt->stat[i].desc = FUNC5(dev,
					sa11x0_cf_gpio_names[i], GPIOD_IN);
		if (FUNC1(skt->stat[i].desc))
			return FUNC2(skt->stat[i].desc);
	}
	return 0;
}