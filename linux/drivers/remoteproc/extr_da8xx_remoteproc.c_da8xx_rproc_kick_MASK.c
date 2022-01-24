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
struct rproc {scalar_t__ priv; } ;
struct da8xx_rproc {int /*<<< orphan*/  chipsig; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSCFG_CHIPSIG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rproc *rproc, int vqid)
{
	struct da8xx_rproc *drproc = (struct da8xx_rproc *)rproc->priv;

	/* Interrupt remote proc */
	FUNC0(SYSCFG_CHIPSIG2, drproc->chipsig);
}