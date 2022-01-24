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
struct mc13xxx_regulator_priv {int powermisc_pwgt_state; struct mc13xxx* mc13xxx; } ;
struct mc13xxx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MC13783_REG_POWERMISC ; 
 int MC13783_REG_POWERMISC_PWGTSPI_M ; 
 int /*<<< orphan*/  FUNC1 (struct mc13xxx*) ; 
 int FUNC2 (struct mc13xxx*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct mc13xxx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mc13xxx*) ; 

__attribute__((used)) static int FUNC5(struct mc13xxx_regulator_priv *priv, u32 mask,
		u32 val)
{
	struct mc13xxx *mc13783 = priv->mc13xxx;
	int ret;
	u32 valread;

	FUNC0(val & ~mask);

	FUNC1(priv->mc13xxx);
	ret = FUNC2(mc13783, MC13783_REG_POWERMISC, &valread);
	if (ret)
		goto out;

	/* Update the stored state for Power Gates. */
	priv->powermisc_pwgt_state =
				(priv->powermisc_pwgt_state & ~mask) | val;
	priv->powermisc_pwgt_state &= MC13783_REG_POWERMISC_PWGTSPI_M;

	/* Construct the new register value */
	valread = (valread & ~mask) | val;
	/* Overwrite the PWGTxEN with the stored version */
	valread = (valread & ~MC13783_REG_POWERMISC_PWGTSPI_M) |
						priv->powermisc_pwgt_state;

	ret = FUNC3(mc13783, MC13783_REG_POWERMISC, valread);
out:
	FUNC4(priv->mc13xxx);
	return ret;
}