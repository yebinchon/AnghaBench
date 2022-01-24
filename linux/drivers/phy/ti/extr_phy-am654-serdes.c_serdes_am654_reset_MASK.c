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
struct serdes_am654 {int /*<<< orphan*/  por_en; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct serdes_am654* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy *x)
{
	struct serdes_am654 *phy = FUNC1(x);
	int ret;

	ret = FUNC2(phy->por_en, 0x1);
	if (ret)
		return ret;

	FUNC0(1);

	ret = FUNC2(phy->por_en, 0x0);
	if (ret)
		return ret;

	return 0;
}