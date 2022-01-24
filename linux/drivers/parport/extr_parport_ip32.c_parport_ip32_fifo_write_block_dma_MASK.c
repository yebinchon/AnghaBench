#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parport_ip32_private {int /*<<< orphan*/  irq_mode; int /*<<< orphan*/  irq_complete; } ;
struct parport {TYPE_1__* cad; struct parport* physport; struct parport_ip32_private* private_data; } ;
struct TYPE_2__ {unsigned long timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int ECR_DMAEN ; 
 unsigned int ECR_SERVINTR ; 
 int /*<<< orphan*/  FIFO_NFAULT_TIMEOUT ; 
 int /*<<< orphan*/  PARPORT_IP32_IRQ_FWD ; 
 int /*<<< orphan*/  PARPORT_IP32_IRQ_HERE ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct parport*) ; 
 scalar_t__ FUNC5 (struct parport*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*,unsigned int,unsigned int) ; 
 unsigned int FUNC7 (struct parport*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static size_t FUNC10(struct parport *p,
						const void *buf, size_t len)
{
	struct parport_ip32_private * const priv = p->physport->private_data;
	struct parport * const physport = p->physport;
	unsigned long nfault_timeout;
	unsigned long expire;
	size_t written;
	unsigned int ecr;

	priv->irq_mode = PARPORT_IP32_IRQ_HERE;

	FUNC3(p, DMA_TO_DEVICE, (void *)buf, len);
	FUNC8(&priv->irq_complete);
	FUNC6(p, ECR_DMAEN | ECR_SERVINTR, ECR_DMAEN);

	nfault_timeout = FUNC0((unsigned long)physport->cad->timeout,
			     FUNC1(FIFO_NFAULT_TIMEOUT));
	expire = jiffies + physport->cad->timeout;
	while (1) {
		if (FUNC5(p, expire))
			break;
		FUNC9(&priv->irq_complete,
							  nfault_timeout);
		ecr = FUNC7(p);
		if (ecr & ECR_SERVINTR)
			break;	/* DMA transfer just finished */
	}
	FUNC4(p);
	written = len - FUNC2();

	priv->irq_mode = PARPORT_IP32_IRQ_FWD;

	return written;
}