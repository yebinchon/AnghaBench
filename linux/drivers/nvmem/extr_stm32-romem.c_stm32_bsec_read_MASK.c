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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int size; struct device* dev; } ;
struct stm32_romem_priv {scalar_t__ base; TYPE_1__ cfg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ STM32MP15_BSEC_DATA0 ; 
 int STM32MP15_BSEC_NUM_LOWER ; 
 int /*<<< orphan*/  STM32_SMC_READ_SHADOW ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (size_t,size_t) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (unsigned int,int) ; 
 int FUNC5 (size_t,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(void *context, unsigned int offset, void *buf,
			   size_t bytes)
{
	struct stm32_romem_priv *priv = context;
	struct device *dev = priv->cfg.dev;
	u32 roffset, rbytes, val;
	u8 *buf8 = buf, *val8 = (u8 *)&val;
	int i, j = 0, ret, skip_bytes, size;

	/* Round unaligned access to 32-bits */
	roffset = FUNC4(offset, 4);
	skip_bytes = offset & 0x3;
	rbytes = FUNC5(bytes + skip_bytes, 4);

	if (roffset + rbytes > priv->cfg.size)
		return -EINVAL;

	for (i = roffset; (i < roffset + rbytes); i += 4) {
		u32 otp = i >> 2;

		if (otp < STM32MP15_BSEC_NUM_LOWER) {
			/* read lower data from shadow registers */
			val = FUNC3(
				priv->base + STM32MP15_BSEC_DATA0 + i);
		} else {
			ret = FUNC6(STM32_SMC_READ_SHADOW, otp, 0,
					     &val);
			if (ret) {
				FUNC0(dev, "Can't read data%d (%d)\n", otp,
					ret);
				return ret;
			}
		}
		/* skip first bytes in case of unaligned read */
		if (skip_bytes)
			size = FUNC2(bytes, (size_t)(4 - skip_bytes));
		else
			size = FUNC2(bytes, (size_t)4);
		FUNC1(&buf8[j], &val8[skip_bytes], size);
		bytes -= size;
		j += size;
		skip_bytes = 0;
	}

	return 0;
}