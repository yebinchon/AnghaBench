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
typedef  int /*<<< orphan*/  u16 ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HD64461_STBCR ; 
 int /*<<< orphan*/  HD64461_STBCR_SLCKE_IST ; 
 int /*<<< orphan*/  HD64461_STBCR_SLCKE_OST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	u16 v;

	v = FUNC0(HD64461_STBCR);
	v &= ~HD64461_STBCR_SLCKE_OST;
	FUNC3(100);
	v = FUNC0(HD64461_STBCR);
	v &= ~HD64461_STBCR_SLCKE_IST;
	FUNC1(v, HD64461_STBCR);
	FUNC2(0,0);

	return 0;
}