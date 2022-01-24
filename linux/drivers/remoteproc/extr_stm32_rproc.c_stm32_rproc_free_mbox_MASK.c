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
struct stm32_rproc {TYPE_1__* mb; } ;
struct rproc {struct stm32_rproc* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * chan; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rproc *rproc)
{
	struct stm32_rproc *ddata = rproc->priv;
	unsigned int i;

	for (i = 0; i < FUNC0(ddata->mb); i++) {
		if (ddata->mb[i].chan)
			FUNC1(ddata->mb[i].chan);
		ddata->mb[i].chan = NULL;
	}
}