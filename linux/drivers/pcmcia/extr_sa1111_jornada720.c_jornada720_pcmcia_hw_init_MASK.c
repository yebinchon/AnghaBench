#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct soc_pcmcia_socket {struct jornada720_data* driver_data; scalar_t__ nr; TYPE_1__ socket; } ;
struct jornada720_data {void** gpio; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 size_t J720_GPIO_3V ; 
 size_t J720_GPIO_PWR ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct jornada720_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct soc_pcmcia_socket *skt)
{
	struct device *dev = skt->socket.dev.parent;
	struct jornada720_data *j;

	j = FUNC3(dev, sizeof(*j), GFP_KERNEL);
	if (!j)
		return -ENOMEM;

	j->gpio[J720_GPIO_PWR] = FUNC2(dev, skt->nr ? "s1-power" :
						"s0-power", GPIOD_OUT_LOW);
	if (FUNC0(j->gpio[J720_GPIO_PWR]))
		return FUNC1(j->gpio[J720_GPIO_PWR]);

	j->gpio[J720_GPIO_3V] = FUNC2(dev, skt->nr ? "s1-3v" :
					       "s0-3v", GPIOD_OUT_LOW);
	if (FUNC0(j->gpio[J720_GPIO_3V]))
		return FUNC1(j->gpio[J720_GPIO_3V]);

	skt->driver_data = j;

	return 0;
}