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
struct zs_scc {int /*<<< orphan*/  zlock; } ;
struct zs_port {struct zs_scc* scc; } ;

/* Variables and functions */
 int /*<<< orphan*/  R0 ; 
 int Tx_BUF_EMP ; 
 int FUNC0 (struct zs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct zs_port *zport, int irq)
{
	struct zs_scc *scc = zport->scc;
	int loops = 10000;

	while (!(FUNC0(zport, R0) & Tx_BUF_EMP) && --loops) {
		FUNC3(&scc->zlock, irq);
		FUNC1(2);
		FUNC2(&scc->zlock, irq);
	}
	return loops;
}