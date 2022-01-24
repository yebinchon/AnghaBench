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
struct pcmcia_socket {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct pcmcia_socket* FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *) ; 

struct pcmcia_socket *FUNC2(struct pcmcia_socket *skt)
{
	struct device *dev = FUNC1(&skt->dev);
	if (!dev)
		return NULL;
	return FUNC0(dev);
}