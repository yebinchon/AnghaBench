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
typedef  int /*<<< orphan*/  u32 ;
struct reset_controller_dev {int dummy; } ;
struct lantiq_rcu_reset_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_offset; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct reset_controller_dev*,unsigned long,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lantiq_rcu_reset_priv* FUNC4 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
				   unsigned long id, bool assert)
{
	struct lantiq_rcu_reset_priv *priv = FUNC4(rcdev);
	unsigned int set = id & 0x1f;
	u32 val = assert ? FUNC0(set) : 0;
	int ret;

	ret = FUNC3(priv->regmap, priv->reset_offset, FUNC0(set),
				 val);
	if (ret) {
		FUNC1(priv->dev, "Failed to set reset bit %u\n", set);
		return ret;
	}


	ret = FUNC2(rcdev, id, assert);
	if (ret)
		FUNC1(priv->dev, "Failed to %s bit %u\n",
			assert ? "assert" : "deassert", set);

	return ret;
}