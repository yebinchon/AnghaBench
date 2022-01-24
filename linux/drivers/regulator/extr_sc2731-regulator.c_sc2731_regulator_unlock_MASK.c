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
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC2731_PWR_WR_PROT ; 
 int /*<<< orphan*/  SC2731_WR_UNLOCK_VALUE ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct regmap *regmap)
{
	return FUNC0(regmap, SC2731_PWR_WR_PROT,
			    SC2731_WR_UNLOCK_VALUE);
}