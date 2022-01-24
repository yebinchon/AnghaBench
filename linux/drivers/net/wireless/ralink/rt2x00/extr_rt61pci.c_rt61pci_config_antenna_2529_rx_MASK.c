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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CSR13 ; 
 int /*<<< orphan*/  MAC_CSR13_DIR3 ; 
 int /*<<< orphan*/  MAC_CSR13_DIR4 ; 
 int /*<<< orphan*/  MAC_CSR13_VAL3 ; 
 int /*<<< orphan*/  MAC_CSR13_VAL4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev,
					   const int p1, const int p2)
{
	u32 reg;

	reg = FUNC1(rt2x00dev, MAC_CSR13);

	FUNC0(&reg, MAC_CSR13_DIR4, 0);
	FUNC0(&reg, MAC_CSR13_VAL4, p1);

	FUNC0(&reg, MAC_CSR13_DIR3, 0);
	FUNC0(&reg, MAC_CSR13_VAL3, !p2);

	FUNC2(rt2x00dev, MAC_CSR13, reg);
}