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
 int /*<<< orphan*/  RP5C01_MODE ; 
 int RP5C01_MODE_MODE01 ; 
 int RP5C01_MODE_RAM_BLOCK10 ; 
 int RP5C01_MODE_RAM_BLOCK11 ; 
 int RP5C01_MODE_TIMER_EN ; 
 int FUNC0 (struct rp5c01_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rp5c01_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *_priv, unsigned int pos, void *val,
			     size_t bytes)
{
	struct rp5c01_priv *priv = _priv;
	u8 *buf = val;

	FUNC2(&priv->lock);

	for (; bytes; bytes--) {
		u8 data;

		FUNC1(priv,
			     RP5C01_MODE_TIMER_EN | RP5C01_MODE_RAM_BLOCK10,
			     RP5C01_MODE);
		data = FUNC0(priv, pos) << 4;
		FUNC1(priv,
			     RP5C01_MODE_TIMER_EN | RP5C01_MODE_RAM_BLOCK11,
			     RP5C01_MODE);
		data |= FUNC0(priv, pos++);
		FUNC1(priv, RP5C01_MODE_TIMER_EN | RP5C01_MODE_MODE01,
			     RP5C01_MODE);
		*buf++ = data;
	}

	FUNC3(&priv->lock);
	return 0;
}