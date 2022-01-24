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
typedef  int u8 ;
struct rp5c01_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int RP5C01_MODE ; 
 int RP5C01_MODE_MODE01 ; 
 int RP5C01_MODE_RAM_BLOCK10 ; 
 int RP5C01_MODE_RAM_BLOCK11 ; 
 int RP5C01_MODE_TIMER_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rp5c01_priv*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *_priv, unsigned int pos, void *val,
			      size_t bytes)
{
	struct rp5c01_priv *priv = _priv;
	u8 *buf = val;

	FUNC1(&priv->lock);

	for (; bytes; bytes--) {
		u8 data = *buf++;

		FUNC0(priv,
			     RP5C01_MODE_TIMER_EN | RP5C01_MODE_RAM_BLOCK10,
			     RP5C01_MODE);
		FUNC0(priv, data >> 4, pos);
		FUNC0(priv,
			     RP5C01_MODE_TIMER_EN | RP5C01_MODE_RAM_BLOCK11,
			     RP5C01_MODE);
		FUNC0(priv, data & 0xf, pos++);
		FUNC0(priv, RP5C01_MODE_TIMER_EN | RP5C01_MODE_MODE01,
			     RP5C01_MODE);
	}

	FUNC2(&priv->lock);
	return 0;
}