#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct ocotp_priv {int /*<<< orphan*/  clk; scalar_t__ base; int /*<<< orphan*/  dev; TYPE_1__* params; } ;
struct TYPE_2__ {unsigned int nregs; } ;

/* Variables and functions */
 scalar_t__ IMX_OCOTP_OFFSET_B0W0 ; 
 int IMX_OCOTP_OFFSET_PER_WORD ; 
 unsigned int IMX_OCOTP_READ_LOCKED_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocotp_mutex ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(void *context, unsigned int offset,
			  void *val, size_t bytes)
{
	struct ocotp_priv *priv = context;
	unsigned int count;
	u32 *buf = val;
	int i, ret;
	u32 index;

	index = offset >> 2;
	count = bytes >> 2;

	if (count > (priv->params->nregs - index))
		count = priv->params->nregs - index;

	FUNC5(&ocotp_mutex);

	ret = FUNC1(priv->clk);
	if (ret < 0) {
		FUNC6(&ocotp_mutex);
		FUNC2(priv->dev, "failed to prepare/enable ocotp clk\n");
		return ret;
	}

	ret = FUNC4(priv->base, 0);
	if (ret < 0) {
		FUNC2(priv->dev, "timeout during read setup\n");
		goto read_end;
	}

	for (i = index; i < (index + count); i++) {
		*buf++ = FUNC7(priv->base + IMX_OCOTP_OFFSET_B0W0 +
			       i * IMX_OCOTP_OFFSET_PER_WORD);

		/* 47.3.1.2
		 * For "read locked" registers 0xBADABADA will be returned and
		 * HW_OCOTP_CTRL[ERROR] will be set. It must be cleared by
		 * software before any new write, read or reload access can be
		 * issued
		 */
		if (*(buf - 1) == IMX_OCOTP_READ_LOCKED_VAL)
			FUNC3(priv->base);
	}
	ret = 0;

read_end:
	FUNC0(priv->clk);
	FUNC6(&ocotp_mutex);
	return ret;
}