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
struct rproc {struct keystone_rproc* priv; } ;
struct keystone_rproc {scalar_t__ kick_gpio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct rproc *rproc, int vqid)
{
	struct keystone_rproc *ksproc = rproc->priv;

	if (FUNC0(ksproc->kick_gpio < 0))
		return;

	FUNC1(ksproc->kick_gpio, 1);
}