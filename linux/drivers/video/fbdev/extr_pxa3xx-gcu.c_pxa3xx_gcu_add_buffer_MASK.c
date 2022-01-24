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
struct pxa3xx_gcu_priv {struct pxa3xx_gcu_batch* free; } ;
struct pxa3xx_gcu_batch {struct pxa3xx_gcu_batch* next; int /*<<< orphan*/  ptr; int /*<<< orphan*/  phys; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PXA3XX_GCU_BATCH_WORDS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa3xx_gcu_batch*) ; 
 struct pxa3xx_gcu_batch* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct device *dev,
		      struct pxa3xx_gcu_priv *priv)
{
	struct pxa3xx_gcu_batch *buffer;

	buffer = FUNC2(sizeof(struct pxa3xx_gcu_batch), GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	buffer->ptr = FUNC0(dev, PXA3XX_GCU_BATCH_WORDS * 4,
					 &buffer->phys, GFP_KERNEL);
	if (!buffer->ptr) {
		FUNC1(buffer);
		return -ENOMEM;
	}

	buffer->next = priv->free;
	priv->free = buffer;

	return 0;
}