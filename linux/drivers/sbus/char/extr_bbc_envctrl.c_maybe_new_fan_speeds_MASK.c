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
struct bbc_fan_control {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bbc_fan_control*) ; 
 int FUNC1 (struct bbc_fan_control*) ; 
 int /*<<< orphan*/  FUNC2 (struct bbc_fan_control*) ; 

__attribute__((used)) static void FUNC3(struct bbc_fan_control *fp)
{
	int new;

	new  = FUNC0(fp);
	new |= FUNC1(fp);

	if (new)
		FUNC2(fp);
}