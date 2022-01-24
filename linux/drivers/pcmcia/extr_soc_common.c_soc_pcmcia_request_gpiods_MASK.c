#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct soc_pcmcia_socket {TYPE_3__* stat; TYPE_2__ socket; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct gpio_desc* desc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct gpio_desc* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct soc_pcmcia_socket *skt)
{
	struct device *dev = skt->socket.dev.parent;
	struct gpio_desc *desc;
	int i;

	for (i = 0; i < FUNC0(skt->stat); i++) {
		if (!skt->stat[i].name)
			continue;

		desc = FUNC4(dev, skt->stat[i].name, GPIOD_IN);
		if (FUNC1(desc)) {
			FUNC3(dev, "Failed to get GPIO for %s: %ld\n",
				skt->stat[i].name, FUNC2(desc));
			return FUNC2(desc);
		}

		skt->stat[i].desc = desc;
	}

	return 0;
}