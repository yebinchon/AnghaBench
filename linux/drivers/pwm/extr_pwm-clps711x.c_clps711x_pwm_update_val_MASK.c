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
typedef  int u32 ;
struct clps711x_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  pmpcon; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct clps711x_chip *priv, u32 n, u32 v)
{
	/* PWM0 - bits 4..7, PWM1 - bits 8..11 */
	u32 shift = (n + 1) * 4;
	unsigned long flags;
	u32 tmp;

	FUNC1(&priv->lock, flags);

	tmp = FUNC0(priv->pmpcon);
	tmp &= ~(0xf << shift);
	tmp |= v << shift;
	FUNC3(tmp, priv->pmpcon);

	FUNC2(&priv->lock, flags);
}