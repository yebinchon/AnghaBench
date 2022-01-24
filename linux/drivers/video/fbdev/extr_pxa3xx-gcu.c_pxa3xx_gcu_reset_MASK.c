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
struct pxa3xx_gcu_priv {int shared_phys; int /*<<< orphan*/  base_time; TYPE_1__* shared; } ;
struct TYPE_2__ {int buffer_phys; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int GCCR_ABORT ; 
 int IE_ALL ; 
 int IE_EOB ; 
 int /*<<< orphan*/  PXA3XX_GCU_SHARED_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REG_GCCR ; 
 int /*<<< orphan*/  REG_GCIECR ; 
 int /*<<< orphan*/  REG_GCRBBR ; 
 int /*<<< orphan*/  REG_GCRBLR ; 
 int /*<<< orphan*/  REG_GCRBTR ; 
 int /*<<< orphan*/  SHARED_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct pxa3xx_gcu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct pxa3xx_gcu_priv *priv)
{
	FUNC0("RESET");

	/* disable interrupts */
	FUNC1(priv, REG_GCIECR, 0);

	/* reset hardware */
	FUNC1(priv, REG_GCCR, GCCR_ABORT);
	FUNC1(priv, REG_GCCR, 0);

	FUNC3(priv->shared, 0, SHARED_SIZE);
	priv->shared->buffer_phys = priv->shared_phys;
	priv->shared->magic = PXA3XX_GCU_SHARED_MAGIC;

	FUNC2(&priv->base_time);

	/* set up the ring buffer pointers */
	FUNC1(priv, REG_GCRBLR, 0);
	FUNC1(priv, REG_GCRBBR, priv->shared_phys);
	FUNC1(priv, REG_GCRBTR, priv->shared_phys);

	/* enable all IRQs except EOB */
	FUNC1(priv, REG_GCIECR, IE_ALL & ~IE_EOB);
}