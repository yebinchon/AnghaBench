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
struct viafb_shared {int /*<<< orphan*/  i2c_2C; int /*<<< orphan*/  i2c_31; int /*<<< orphan*/  i2c_26; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct viafb_shared *shared)
{
	FUNC0(shared->i2c_26);
	FUNC0(shared->i2c_31);
	FUNC0(shared->i2c_2C);
}