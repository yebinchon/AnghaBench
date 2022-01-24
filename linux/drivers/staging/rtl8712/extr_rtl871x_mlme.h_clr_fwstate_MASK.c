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
struct mlme_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  fw_state; } ;
typedef  int /*<<< orphan*/  sint ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct mlme_priv *pmlmepriv, sint state)
{
	unsigned long irqL;

	FUNC1(&pmlmepriv->lock, irqL);
	if (FUNC0(pmlmepriv, state))
		pmlmepriv->fw_state ^= state;
	FUNC2(&pmlmepriv->lock, irqL);
}