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
struct parport_pc_private {scalar_t__ ecr; } ;
struct parport {scalar_t__ dma; struct parport_pc_private* private_data; } ;

/* Variables and functions */
 scalar_t__ PARPORT_DMA_NONE ; 
 scalar_t__ FUNC0 (struct parport*) ; 
 scalar_t__ FUNC1 (struct parport*) ; 

__attribute__((used)) static int FUNC2(struct parport *p)
{
	const struct parport_pc_private *priv = p->private_data;
	if (priv->ecr)		/* ask ECP chipset first */
		p->dma = FUNC1(p);
	if (p->dma == PARPORT_DMA_NONE) {
		/* ask known Super-IO chips proper, although these
		   claim ECP compatible, some don't report their DMA
		   conforming to ECP standards */
		p->dma = FUNC0(p);
	}

	return p->dma;
}