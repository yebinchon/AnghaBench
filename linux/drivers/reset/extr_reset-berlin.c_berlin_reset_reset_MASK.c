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
struct reset_controller_dev {int dummy; } ;
struct berlin_reset_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct berlin_reset_priv* FUNC2 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct reset_controller_dev *rcdev,
			      unsigned long id)
{
	struct berlin_reset_priv *priv = FUNC2(rcdev);
	int offset = id >> 8;
	int mask = FUNC0(id & 0x1f);

	FUNC1(priv->regmap, offset, mask);

	/* let the reset be effective */
	FUNC3(10);

	return 0;
}