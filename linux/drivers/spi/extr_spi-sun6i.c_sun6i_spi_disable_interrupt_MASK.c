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
struct sun6i_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN6I_INT_CTL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct sun6i_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sun6i_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct sun6i_spi *sspi, u32 mask)
{
	u32 reg = FUNC0(sspi, SUN6I_INT_CTL_REG);

	reg &= ~mask;
	FUNC1(sspi, SUN6I_INT_CTL_REG, reg);
}