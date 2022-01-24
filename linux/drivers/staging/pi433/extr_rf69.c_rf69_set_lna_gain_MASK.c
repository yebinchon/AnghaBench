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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum lna_gain { ____Placeholder_lna_gain } lna_gain ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int EINVAL ; 
#define  LNA_GAIN_AUTO 141 
#define  LNA_GAIN_MAX 140 
#define  LNA_GAIN_MAX_MINUS_12 139 
#define  LNA_GAIN_MAX_MINUS_24 138 
#define  LNA_GAIN_MAX_MINUS_36 137 
#define  LNA_GAIN_MAX_MINUS_48 136 
#define  LNA_GAIN_MAX_MINUS_6 135 
 int /*<<< orphan*/  MASK_LNA_GAIN ; 
 int /*<<< orphan*/  REG_LNA ; 
#define  automatic 134 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
#define  max 133 
#define  max_minus_12 132 
#define  max_minus_24 131 
#define  max_minus_36 130 
#define  max_minus_48 129 
#define  max_minus_6 128 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct spi_device *spi, enum lna_gain lna_gain)
{
	static const u8 lna_gain_map[] = {
		[automatic] = LNA_GAIN_AUTO,
		[max] = LNA_GAIN_MAX,
		[max_minus_6] = LNA_GAIN_MAX_MINUS_6,
		[max_minus_12] = LNA_GAIN_MAX_MINUS_12,
		[max_minus_24] = LNA_GAIN_MAX_MINUS_24,
		[max_minus_36] = LNA_GAIN_MAX_MINUS_36,
		[max_minus_48] = LNA_GAIN_MAX_MINUS_48,
	};

	if (FUNC3(lna_gain >= FUNC0(lna_gain_map))) {
		FUNC1(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}

	return FUNC2(spi, REG_LNA, MASK_LNA_GAIN,
				   lna_gain_map[lna_gain]);
}