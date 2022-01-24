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
struct tx_servq {scalar_t__ qcnt; int /*<<< orphan*/  sta_pending; int /*<<< orphan*/  tx_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct tx_servq *ptxservq)
{
	FUNC0(&ptxservq->tx_pending);
	FUNC1(&ptxservq->sta_pending);
	ptxservq->qcnt = 0;
}