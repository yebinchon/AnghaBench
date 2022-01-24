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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_META ; 
 int /*<<< orphan*/  kbd ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, unsigned char value, char up_flag)
{
	if (up_flag)
		return;

	if (FUNC1(kbd, VC_META)) {
		FUNC0(vc, '\033');
		FUNC0(vc, value);
	} else
		FUNC0(vc, value | 0x80);
}