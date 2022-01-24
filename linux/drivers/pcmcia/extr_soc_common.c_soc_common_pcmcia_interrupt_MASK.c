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
struct soc_pcmcia_socket {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct soc_pcmcia_socket*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_pcmcia_socket*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev)
{
	struct soc_pcmcia_socket *skt = dev;

	FUNC0(skt, 3, "servicing IRQ %d\n", irq);

	FUNC1(skt);

	return IRQ_HANDLED;
}