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
struct dw_spi {int reg_io_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct dw_spi *dws, u32 offset, u32 val)
{
	switch (dws->reg_io_width) {
	case 2:
		FUNC1(dws, offset, val);
		break;
	case 4:
	default:
		FUNC0(dws, offset, val);
		break;
	}
}