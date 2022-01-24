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
struct serdes_am654 {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 struct serdes_am654* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct serdes_am654*) ; 
 int /*<<< orphan*/  FUNC2 (struct serdes_am654*) ; 

__attribute__((used)) static int FUNC3(struct phy *x)
{
	struct serdes_am654 *phy = FUNC0(x);

	FUNC2(phy);
	FUNC1(phy);

	return 0;
}